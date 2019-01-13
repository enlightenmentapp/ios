//
//  ENAppContentModel.m
//  LCEnlightenment
//
//  Created by Liana Chu on 9/10/15.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import "ENAppContentModel.h"

@implementation ENAppContentModel

-(id)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}
//
- (void)setup
{
	NSString *path = [[NSBundle mainBundle] pathForResource:@"directory" ofType:@"json"];
	NSData *data = [NSData dataWithContentsOfFile:path];
	NSError *jsonParseError = NULL;
	NSDictionary *directory = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParseError];
	if (jsonParseError != NULL) {
		NSAssert(false, jsonParseError.localizedDescription);
		[[NSException exceptionWithName:@"Parse error" reason:jsonParseError.localizedDescription userInfo:nil] raise];
		return;
	}
	NSArray *jsonList = directory[directory[@"root"]];
	NSArray *menuMembers = [self membersArrayFromJSONList:jsonList directory:directory];
	ENList *rootList = [[ENList alloc] init];
	rootList.array = menuMembers;
	self.root = rootList;
	for (id menuMember in menuMembers) {
		if ([menuMember isKindOfClass:[ENList class]]) {
			ENList *menuListMember = (ENList *)menuMember;
			if (menuListMember.isTableOfContents) {
				self.tableOfContentsENList = menuListMember;
			}
		}
	}
}
//
// Accessors - Model construction
- (NSArray *)membersArrayFromJSONList:(NSArray *)jsonList directory:(NSDictionary *)directory
{
	NSMutableArray *array = [NSMutableArray new];
	int i = 0;
	for (NSDictionary *el in jsonList) {
		NSString *title = [self jsonValueOrNilIn:el atKey:@"title"];
		NSString *description = [self jsonValueOrNilIn:el atKey:@"description"]; // may be nil
		NSString *listKey_orNil = [self jsonValueOrNilIn:el atKey:@"list"];
		if (listKey_orNil != nil) {
			ENList *list = [[ENList alloc] init];
			list.title = title;
			if (description) {
				list.detailText = description;
			}
			list.index = [NSNumber numberWithInt:i];
			list.section = listKey_orNil;
			list.array = [self membersArrayFromJSONList:directory[listKey_orNil] directory:directory];
			if ([listKey_orNil isEqualToString:@"contents"]) {
				list.isTableOfContents = YES;
			}
			[array addObject:list];
		} else {
			ENDocument *document = [[ENDocument alloc] init];
			document.title = title;
			document.filename = [self jsonValueOrNilIn:el atKey:@"filename"]; // in rare cases this may be nil, such as with 'Lonely Struggle'
			document.detailText = description;
			document.index = [NSNumber numberWithInt:i];
			document.parent = array;
			document.sourceURL = [self jsonValueOrNilIn:el atKey:@"sourceURL"];
			document.mediaFileExtension = [self jsonValueOrNilIn:el atKey:@"media_file_ext"];
			document.isBundledMediaFile = document.mediaFileExtension != nil;
			[array addObject:document];
		}
		i++;
	}
	return array;
}
- (id)jsonValueOrNilIn:(NSDictionary *)container atKey:(NSString *)key
{
	id value = container[key];
	if ([value isKindOfClass:[NSNull class]]) { // important to send NSNull.null -> nil so app code can expect nil
		return nil;
	}
	return value;
}
//
// Accessors - Searches
- (NSArray *)documentsMatchingItems:(NSArray *)searchItems
{
	NSMutableArray *results = [NSMutableArray new];
	for (NSString *item in searchItems) {
		NSArray *itemResults = [self documentsMatchingString:item];
		for (ENDocument *itemResult in itemResults) {
			if ([results containsObject:itemResults] == false) {
				[results addObject:itemResult];
			}
		}
	}
	return results;
}
- (NSArray *)documentsMatchingString:(NSString *)searchString
{
	// Note: removing html from search string so it doesn't match all documents
	// Note: from a code clarity perspective, the sanitization (e.g. HTML removal) would be happening in +doesContentString:matchNoHTMLString: and it would be called …matchString: instead, but doing it here does the stripping work once whereas doing it there does the work on each string search
	return [[self class] _documentsMatchingSanitizedString: [[self class] sanitizedSearchStringFrom:searchString] searchingRecursivelyInList:self.root];
}
+ (NSString *)sanitizedSearchStringFrom:(NSString *)searchString
{
	NSRange r;
	NSString *s = [searchString copy];
	while ((r = [s rangeOfString:@"<[^>]+>" options:NSRegularExpressionSearch]).location != NSNotFound)
		s = [s stringByReplacingCharactersInRange:r withString:@""];
	//
	return s;
}
+ (NSArray *)_documentsMatchingSanitizedString:(NSString *)searchString searchingRecursivelyInList:(ENList *)list
{
	NSMutableArray *results = [NSMutableArray new];
	for (id el in list.array) {
		if ([el isKindOfClass:[ENList class]]) {
			NSArray *tocListMatches = [self _documentsMatchingSanitizedString:searchString searchingRecursivelyInList:(ENList *)el];
			[results addObjectsFromArray:tocListMatches];
		} else if ([el isKindOfClass:[ENDocument class]]) {
			if ([self doesDocument:(ENDocument *)el matchSanitizedString:searchString]) {
				[results addObject:el];
			}
		} else {
			NSAssert(false, @"Unexpected element type");
		}
	}
	return results;
}
+ (BOOL)doesDocument:(ENDocument *)document matchSanitizedString:(NSString *)searchString
{
	if (document.title && document.title.length > 0 && [self doesContentString:document.title matchSanitizedString:searchString]) {
		return YES;
	} else if (document.detailText && document.detailText.length > 0 && [self doesContentString:document.detailText matchSanitizedString:searchString]) {
		return YES;
	} else if (document.filename && document.filename.length > 0) {
		if ([document.filename rangeOfString:@"http"].location != NSNotFound) { // then we don't need to open the file to search it
			// Note: not http: b/c that would exclude https:, and we might as well search 'http' instead of both 'http:' and 'https:' because 'http' is obscure/specific enough to URLs for it to probably not matter
			if ([self doesContentString:document.filename matchSanitizedString:searchString]) {
				return YES;
			}
		} else { // then it must be an HTML file (at present)
			if (document.isBundledMediaFile) {
				return NO; // since we can't search the content
			}
			NSString *filePath = [[NSBundle mainBundle] pathForResource:document.filename ofType:@"html"];
			NSError *error = NULL;
			NSString *fileContentString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
			if (error != NULL) {
				NSLog(@"Search: File open error; filename: %@; path: %@: %@", document.filename, filePath, error);
			}
			NSAssert(error == NULL, @"Not expecting a file open error here as all files should exist");
			if ([self doesContentString:fileContentString matchSanitizedString:searchString]) {
				return YES;
			}
		}
	}
	return NO;
}
+ (BOOL)doesContentString:(NSString *)contentString matchSanitizedString:(NSString *)searchString
{
	return [contentString rangeOfString:searchString
								options:NSRegularExpressionSearch|NSCaseInsensitiveSearch
			].location != NSNotFound;
}
	
@end
