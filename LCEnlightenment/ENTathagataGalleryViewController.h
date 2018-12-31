//
//  ENTathagataGalleryViewController.h
//  LCEnlightenment
//
//  Created by Liana Chu on 9/17/15.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ENTathagataGalleryViewController : UIViewController <UIScrollViewDelegate> {   
    int           firstVisiblePageIndexBeforeRotation;
    CGFloat       percentScrolledIntoFirstVisiblePage;
    
}

@property (nonatomic, retain) UIScrollView *scroller;
@property (nonatomic, retain) UILabel *captionLabel;
@property (nonatomic, retain) NSArray *imagesArray, *captionsArray;

- (CGRect)frameForPageAtIndex:(NSUInteger)index;
- (CGSize)imageSizeAtIndex:(NSUInteger)index;
- (CGRect)frameForPagingScrollView;
- (CGSize)contentSizeForPagingScrollView;

@end
