//
//  ENAppContentModel.h
//  LCEnlightenment
//
//  Created by Liana Chu on 9/10/15.
//  Copyright (c) 2015 Liana Chu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ENList.h"
#import "ENDocument.h"

@interface ENAppContentModel : NSObject

@property (strong, nonatomic) ENList *tableOfContentsENList;

-(void) addENDocumentWithTitle:(NSString *)title
                 description:(id)description
                    filename:(id)filename
                   sourceURL:(id)sourceURL
                      parent:(id)parent
                       index:(int)index;


-(void) addENDocumentWithTitle:(NSString *)title
                 description:(id)description
                    filename:(id)filename
                      parent:(id)parent
                       index:(int)index;

// Searching content
- (NSArray *)documentsMatchingString:(NSString *)searchString;

@end
