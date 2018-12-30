//
//  ENMainMenuViewController.h
//  LCEnlightenment
//
//  Created by Liana Chu on 9/4/15.
//  Copyright (c) 2015 Liana Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ENAppContentModel.h"

@interface ENMainMenuViewController : UIViewController

@property (strong, nonatomic) UIButton *introductionButton;
@property (strong, nonatomic) UIButton *messageFromTathagataButton;
@property (strong, nonatomic) UIButton *tableOfContentsButton;
@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) ENAppContentModel *model;
@end
