//
//  ENTathagataGalleryViewController.m
//  LCEnlightenment
//
//  Created by Liana Chu on 9/17/15.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import "ENTathagataGalleryViewController.h"

@interface ENTathagataGalleryViewController ()

@end

@implementation ENTathagataGalleryViewController

-(id) init {
    if ( ( self = [super init] ) ) {
        self.imagesArray = [NSArray arrayWithObjects:
                       @"02_001.jpg",
                       @"lastscan1.jpg",
                       @"14.jpg",
                       @"19981029_1.jpg",
                       @"oxforf1997.jpg",
                       @"20000526_1.jpg",
                       @"20000524_3.jpg",
                       @"20000625_1.jpg",
                       @"20020619_1.jpg",
                       @"portrait_07.jpg",
                       @"portrait_08.jpg",
                       @"photo 003.jpg",
                       @"photo 123.jpg",
                       @"photo 231.jpg",
                       @"______ 033.jpg",
                       nil];
        self.captionsArray = [NSArray arrayWithObjects:
                         @"Master Tathagata, Soyun, and David at Leicester Square.",
                         @"Tathagata in Bodh Gaya in 1994.",
                         @"India, 1997.",
                         @"Maharashtra Institute of Technology, 1998.",
                         @"At Oxford University in 1998.",
                         @"May 24, 2000.",
                         @"May 26, 2000.",
                         @"June 25, 2000 in Hyde Park, London.",
                         @"Barking, UK on June 19, 2002.",
                         @"Portrait from 2004.",
                         @"Portrait of Tathagata from 2006.",
                         @"Hollywood, 2007.",
                         @"Columbia University, 2007.",
                         @"New York University, 2007.",
                         @"Tathagata lecturing in Busan, 2007.",
                         nil];
    }
    return self;}

- (NSUInteger)imageCount {
    return [self.imagesArray count];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scroller = [[UIScrollView alloc] initWithFrame:[self frameForPagingScrollView]];
    self.scroller.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.scroller.pagingEnabled = YES;
    self.scroller.backgroundColor = [UIColor grayColor];//[UIColor	scrollViewTexturedBackgroundColor];
    self.scroller.showsVerticalScrollIndicator = NO;
    self.scroller.showsHorizontalScrollIndicator = NO;
    self.scroller.alwaysBounceHorizontal = YES;
    self.scroller.alwaysBounceVertical = NO;
    self.scroller.delegate = self;
    self.scroller.frame = [self frameForPagingScrollView];
    [self.view addSubview:self.scroller];
    
    UILabel *captionLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 60, self.view.frame.size.width, 60)];
    self.captionLabel = captionLabel;
    captionLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    captionLabel.text = [self.captionsArray objectAtIndex:0];
    captionLabel.textColor = [UIColor whiteColor];
    captionLabel.textAlignment = NSTextAlignmentCenter;
    captionLabel.numberOfLines = 2;
    captionLabel.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.2];
    captionLabel.font = [UIFont systemFontOfSize:13];
    captionLabel.shadowColor = [UIColor colorWithWhite:0 alpha:0.6];  //alpha 0.6
    captionLabel.shadowOffset = CGSizeMake(0, 1);
    [self.view addSubview:captionLabel];
    [self loadImages];
    self.edgesForExtendedLayout = UIRectEdgeNone;   //This somehow makes it so that the scrollview isn't underneath the nav bar.
}

- (void)layoutImages {
    int i = 0;
    for (UIView *page in self.scroller.subviews ) {
        page.frame = [self frameForPageAtIndex:i++];
    }
}
- (void)loadImages {    //Liana: puts photos into UIImageViews, which are then added as subviews to scrollView.
    int i = 0 ;
    for ( id image in self.imagesArray ) {
//        id caption = [self.captions objectAtIndex:i];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:image]];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        [self.scroller addSubview:imageView];
        
        i++;
    }
    
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    CGFloat offset = self.scroller.contentOffset.x;  //Apple: The point at which the origin of the content view is offset from the origin of the scroll view.
    CGFloat pageWidth = self.scroller.bounds.size.width;
    
    int page = floorf(((offset > 0) ? offset : 0) / pageWidth);  //Liana: Seems to find out what page you're on
    
    self.captionLabel.text = [self.captionsArray objectAtIndex:page];
}

#define PADDING  0
- (CGRect)frameForPageAtIndex:(NSUInteger)index {     //Liana: Defines properties for each 'page' of scrollview
    CGRect bounds = self.scroller.bounds;
    CGRect pageFrame = bounds;
    pageFrame.size.width -= (2 * PADDING);
    pageFrame.origin.x = (bounds.size.width * index) + PADDING;
    return pageFrame;
}

- (CGSize)imageSizeAtIndex:(NSUInteger)index {  //Liana: Is this even ever called?
    CGSize size = CGSizeZero;
    if (index < [self imageCount]) {
        //        NSDictionary *data = [[self imageData] objectAtIndex:index];
        size.width = 320;//[[data valueForKey:@"width"] floatValue];
        size.height = 320;//[[data valueForKey:@"height"] floatValue];
    }
    return size;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.scroller.frame = [self frameForPagingScrollView];
    self.scroller.contentSize = [self contentSizeForPagingScrollView];
    [self layoutImages];
}

- (CGRect)frameForPagingScrollView {
    CGRect frame = CGRectMake(0, 0,
                              self.view.frame.size.width,
                              self.view.frame.size.height);
    frame.origin.x -= PADDING;
    frame.size.width += (2 * PADDING);
    return frame;
}

- (CGSize)contentSizeForPagingScrollView {
    // We have to use the paging scroll view's bounds to calculate the contentSize, for the same reason outlined above.
    CGRect bounds = self.scroller.bounds;
    return CGSizeMake(bounds.size.width * [self imageCount], bounds.size.height);
}



- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    // here, our scroller bounds have not yet been updated for the new interface orientation. So this is a good
    // place to calculate the content offset that we will need in the new orientation
    CGFloat offset = self.scroller.contentOffset.x;
    CGFloat pageWidth = self.scroller.bounds.size.width;
    
    if (offset >= 0) {
        firstVisiblePageIndexBeforeRotation = floorf(offset / pageWidth);
        percentScrolledIntoFirstVisiblePage = (offset - (firstVisiblePageIndexBeforeRotation * pageWidth)) / pageWidth;
    } else {
        firstVisiblePageIndexBeforeRotation = 0;
        percentScrolledIntoFirstVisiblePage = offset / pageWidth;
    }
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    // recalculate contentSize based on current orientation
    self.scroller.contentSize = [self contentSizeForPagingScrollView];
    // adjust frames and configuration of each visible page
    [self layoutImages];
    
    // adjust contentOffset to preserve page location based on values collected prior to location
    CGFloat pageWidth = self.scroller.bounds.size.width;
    CGFloat newOffset = (firstVisiblePageIndexBeforeRotation * pageWidth) + (percentScrolledIntoFirstVisiblePage * pageWidth);
    self.scroller.contentOffset = CGPointMake(newOffset, 0);
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return YES;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc. that aren't in use.
}


@end
