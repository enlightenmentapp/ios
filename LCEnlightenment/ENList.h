//
//  ENList.h
//  LCEnlightenment
//
//  Created by Liana Chu on 9/14/15.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ENList : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSArray *array;
@property (strong, nonatomic) NSString *section;
@property (strong, nonatomic) NSNumber *index;
@property (strong, nonatomic) NSString *detailText;

@property (nonatomic) BOOL isTableOfContents;
	

@end
