//
//  ENAppContentModel.h
//  LCEnlightenment
//
//  Created by Liana Chu on 9/10/15.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ENList.h"
#import "ENDocument.h"

@interface ENAppContentModel : NSObject

@property (nonatomic, strong) ENList *root;
@property (nonatomic, strong) ENList *tableOfContentsENList;

// Searching content
- (NSArray *)documentsMatchingItems:(NSArray *)searchItems; // array of strings
- (NSArray *)documentsMatchingString:(NSString *)searchString;

@end
