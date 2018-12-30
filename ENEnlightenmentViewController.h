//
//  ENEnlightenmentViewController.h
//  LCEnlightenment
//
//  Created by Liana Chu on 9/8/15.
//  Copyright (c) 2015 Liana Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ENEnlightenmentViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, strong) UIWebView *webView;

-(void)setupWebViewWithHTMLFileNamed:(NSString *)fileName andTitle:(NSString *)title;

@end
