//
//  ENNavigation.m
//  Enlightenment
//
//  Created by Paul Shapiro on 12/30/18.
//  Copyright © 2018 Liana Chu. All rights reserved.
//

#import "ENNavigation.h"
#import "ENBaseWebViewController.h"

@implementation ENNavigation

+ (void)navigateToDocument:(ENDocument *)document fromTableViewController:(UITableViewController *)tableViewController fromIndexPath:(NSIndexPath *)indexPath
{
	ENBaseWebViewController *controller = [[ENBaseWebViewController alloc] init];
	if (document.filename)  {
		if ([document.filename rangeOfString:@"http"].location == NSNotFound) {
			[controller setupWebViewWithHTMLFileNamed:document.filename andTitle:document.title];
			[tableViewController.navigationController pushViewController:controller animated:YES];
		} else {
			[[UIApplication sharedApplication] openURL:[NSURL URLWithString:document.filename]];
			[tableViewController.tableView deselectRowAtIndexPath:indexPath animated:YES];
		}
	} else { // no associated filename, like 'lonely struggle' so push nothing.
		[tableViewController.tableView deselectRowAtIndexPath:indexPath animated:YES];
	}
}
	
@end
