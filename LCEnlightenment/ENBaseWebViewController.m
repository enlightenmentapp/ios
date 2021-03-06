//
//  ENBaseWebViewController.m
//  LCEnlightenment
//
//  Created by Liana Chu on 9/8/15.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import "ENBaseWebViewController.h"

@interface ENBaseWebViewController ()

@end

@implementation ENBaseWebViewController

-(id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)setupWebViewWithHTMLFileNamed:(NSString *)fileName andTitle:(NSString *)title
{
	//
	// TODO: rebuild this to use WKWebView (although, how much does that limit our legacy iOS support? it may not be a good idea)
	//
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    webView.backgroundColor = [UIColor whiteColor];
    webView.delegate = self;
    [self.view addSubview:webView];
    self.webView = webView;
    
    NSMutableData *htmlData = [[NSMutableData alloc] init];

    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"page_begin" ofType:@"html"];
    [htmlData appendData:[NSData dataWithContentsOfFile:filePath]];
    
    filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"html"];
    [htmlData appendData:[NSData dataWithContentsOfFile:filePath]];
    
    filePath = [[NSBundle mainBundle] pathForResource:@"page_end" ofType:@"html"];
    [htmlData appendData:[NSData dataWithContentsOfFile:filePath]];
    
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    
    if (htmlData) {
        [self.webView loadData:htmlData
                             MIMEType:@"text/html"
                     textEncodingName:@"UTF-8"
                              baseURL:baseURL];
    }
    self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [self.navigationItem setTitle:title];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
