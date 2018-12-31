//
//  ENBaseWebViewController.h
//  LCEnlightenment
//
//  Created by Liana Chu on 9/8/15.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ENBaseWebViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, strong) UIWebView *webView;

- (void)setupWebViewWithHTMLFileNamed:(NSString *)fileName andTitle:(NSString *)title;

@end
