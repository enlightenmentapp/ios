//
//  ENNavigation.h
//  Enlightenment
//
//  Created by Paul Shapiro on 12/30/18.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ENDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface ENNavigation : NSObject

+ (void)navigateToDocument:(ENDocument *)document fromTableViewController:(UITableViewController *)tableViewController fromIndexPath:(NSIndexPath *)indexPath;
	
@end

NS_ASSUME_NONNULL_END
