//
//  TableViewController.h
//  LCEnlightenment
//
//  Created by Liana Chu on 9/12/15.
//  Copyright (c) 2015 Liana Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ENModel.h"
#import "ENList.h"
#import "ENTableViewController.h"

//typedef NS_ENUM(NSUInteger, LCTableViewRowObjectType)
//{
//    LCTableViewRowObjectType_document,
//    LCTableViewRowObjectType_list
//};

@interface TableViewController : UITableViewController

//- (id)initWithRowObjectType:(LCTableViewRowObjectType)rowObjectType;

@property (strong, nonatomic) ENModel *model;
@property (strong, nonatomic) ENList *list;
@property (strong, nonatomic) NSObject *parentSelected;  //parentSelected/whateverIsPassed

@end
