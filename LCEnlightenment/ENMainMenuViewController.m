//
//  ENMainMenuViewController.m
//  LCEnlightenment
//
//  Created by Liana Chu on 9/4/15.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import "ENMainMenuViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "ENAppContentModel.h"
#import "ENTableViewController.h"
#import "ENBaseWebViewController.h"

@interface ENMainMenuViewController ()

@end

@implementation ENMainMenuViewController

-(id)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    [self createTitleLabel];
    [self createBackgroundImageView];
    [self createButtons];
    [self layoutViews];
    [self setupENAppContentModel];
}

- (void)setupENAppContentModel
{
    ENAppContentModel *model = [[ENAppContentModel alloc] init];
    self.model = model;
}

- (void)createTitleLabel
{
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"Enlightenment";
    titleLabel.shadowColor = [UIColor colorWithWhite:0.75 alpha:0.4];
    titleLabel.shadowOffset = CGSizeMake(0, 1);
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.font = [UIFont boldSystemFontOfSize:36];

    titleLabel.numberOfLines = 0;
    titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    [titleLabel sizeToFit];
    titleLabel.textColor = [UIColor blueColor];
    [self.view addSubview:titleLabel];
    self.titleLabel = titleLabel;
}

- (void)createBackgroundImageView
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"index_background.JPG"]];

    imageView.contentMode = UIViewContentModeScaleAspectFit;
    //Do not produce a translated constraint for this view
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    
//    [imageView setContentHuggingPriority:500 forAxis:UILayoutConstraintAxisVertical];
//    [imageView setContentCompressionResistancePriority:500 forAxis:UILayoutConstraintAxisVertical];
    
    [self.view addSubview:imageView];
    self.imageView = imageView;
}

+ (UIButton *)newMenuButton
{
	UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
	button.layer.cornerRadius = 5;
	button.layer.borderWidth = 1.0;
	button.titleLabel.font = [UIFont boldSystemFontOfSize:18];
	button.titleLabel.adjustsFontSizeToFitWidth = true;
	button.titleLabel.minimumScaleFactor = 0.3;
	button.layer.borderColor = [UIColor blueColor].CGColor;
	//
	return button;
}
	
- (void)createButtons
{
    UIButton *introductionButton = [[self class] newMenuButton];
    [introductionButton setTitle:@"Introduction" forState:UIControlStateNormal];
    [introductionButton addTarget:self action:@selector(introductionButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:introductionButton];
    self.introductionButton = introductionButton;
    
	UIButton *messageFromTathagataButton = [[self class] newMenuButton];
    [messageFromTathagataButton setTitle:@"A Message From Tathagata"
                                forState:UIControlStateNormal];
    [messageFromTathagataButton addTarget:self action:@selector(messageFromTathagataButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:messageFromTathagataButton];
    self.messageFromTathagataButton = messageFromTathagataButton;
    
	UIButton *tableOfContentsButton = [[self class] newMenuButton];
    [tableOfContentsButton setTitle:@"Table Of Contents" forState:UIControlStateNormal];
    [tableOfContentsButton addTarget:self action:@selector(tableOfContentsButtonPressed) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:tableOfContentsButton];
    self.tableOfContentsButton = tableOfContentsButton;
    
//    [introductionButton setTitleColor: [UIColor whiteColor] forState:UIControlStateNormal];
//    introductionButton.layer.borderColor = [UIColor whiteColor].CGColor;//
//    [messageFromTathagataButton  setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    messageFromTathagataButton.layer.borderColor = [UIColor whiteColor].CGColor; //
//    [tableOfContentsButton  setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    tableOfContentsButton.layer.borderColor = [UIColor whiteColor].CGColor;//
}

- (void)layoutViews
{
    self.introductionButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.messageFromTathagataButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.tableOfContentsButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *nameMap = @{@"introductionButton" : self.introductionButton,
                              @"messageFromTathagataButton" : self.messageFromTathagataButton,
                              @"tableOfContentsButton" : self.tableOfContentsButton,
                              @"titleLabel" : self.titleLabel,
                              @"imageView" : self.imageView};
    
    //Buttons
    NSArray *introButtonHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[introductionButton]-40-|" options:0 metrics:nil views:nameMap];
    
    NSArray *messageButtonHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[messageFromTathagataButton]-40-|" options:0 metrics:nil views:nameMap];
    
    NSArray *tableButtonHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[tableOfContentsButton]-40-|" options:0 metrics:nil views:nameMap];
    
    
    
    NSArray *tableButtonVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[tableOfContentsButton]-50-|" options:0 metrics:nil views:nameMap];
    
    NSArray *introButtonVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[introductionButton(==44)]-16-[messageFromTathagataButton(==44)]-16-[tableOfContentsButton(==44)]" options:0 metrics:nil views:nameMap];
    
    //"Enlightenment Title"
    NSArray *titleLabelHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[titleLabel]-20-|" options:0 metrics:nil views:nameMap];
    
    NSArray *titleLabelVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[titleLabel]" options:0 metrics:nil views:nameMap];
    
    NSArray *imageViewVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[titleLabel]-5-[imageView]-5-[introductionButton]" options:0 metrics:nil views:nameMap];
    
    NSArray *imageViewHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[imageView]-10-|" options:0 metrics:nil views:nameMap];
    
    [self.view addConstraints:tableButtonVerticalConstraints];
    [self.view addConstraints:introButtonHorizontalConstraints];
    [self.view addConstraints:messageButtonHorizontalConstraints];
    
    [self.view addConstraints:tableButtonHorizontalConstraints];
    [self.view addConstraints:introButtonVerticalConstraints];
    
    [self.view addConstraints:titleLabelHorizontalConstraints];
    [self.view addConstraints:titleLabelVerticalConstraints];
    
    [self.view addConstraints:imageViewVerticalConstraints];
    [self.view addConstraints:imageViewHorizontalConstraints];

    
    
}

- (void)introductionButtonPressed
{
    ENBaseWebViewController *controller = [[ENBaseWebViewController alloc] init];
    [controller setupWebViewWithHTMLFileNamed:@"introduction" andTitle:@"Introduction"];
    [self.navigationController pushViewController:controller animated:YES];
    
}

- (void)messageFromTathagataButtonPressed
{
    ENBaseWebViewController *controller = [[ENBaseWebViewController alloc] init];
    [controller setupWebViewWithHTMLFileNamed:@"message" andTitle:@"Message From Tathagata"];
    [self.navigationController pushViewController:controller animated:YES];
}

- (void)tableOfContentsButtonPressed
{
    TableViewController *tableViewController = [[TableViewController alloc] init];
	tableViewController.model = self.model; // must be set so that search results controller has it
    tableViewController.list = self.model.tableOfContentsENList;
    [self.navigationController pushViewController:tableViewController animated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationItem.leftBarButtonItem = nil;
    
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden{
    return NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
