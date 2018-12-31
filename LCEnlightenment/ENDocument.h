//
//  ENDocument.h
//  LCEnlightenment
//
//  Created by Liana Chu on 9/10/15.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ENDocument : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *filename;
@property (weak, nonatomic) NSArray *parent;

@property (strong, nonatomic) NSString *sourceURL;
@property (strong, nonatomic) NSString *detailText;

@property (strong, nonatomic) NSNumber *index;

@end
