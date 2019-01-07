//
//  TableViewController.m
//  LCEnlightenment
//
//  Created by Liana Chu on 9/12/15.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

#import "ENTableViewController.h"
#import "ENAppContentModel.h"
#import "ENDocument.h"
#import "ENList.h"
#import "ENBaseWebViewController.h"
#import "Enlightenment-Swift.h"
#import "ENNavigation.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	if (self.list.isTableOfContents) {
		self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(contentSearchButtonTapped)];
	}
}
	
- (void)contentSearchButtonTapped
{
	ContentSearchTableViewController *controller = [[ContentSearchTableViewController alloc] initWithModel:self.model];
	[self.navigationController pushViewController:controller animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.list.array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellReuseIdentifier = @"cellReuseIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseIdentifier];  //took out  forIndexPath:indexPath from back of this
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellReuseIdentifier];
    }
    if ([[self.list.array objectAtIndex:indexPath.row] isKindOfClass:[ENList class]]) {
        ENList *list = [self.list.array objectAtIndex:indexPath.row];
        cell.textLabel.text = list.title;
        cell.detailTextLabel.text = list.detailText;
    } else if ([[self.list.array objectAtIndex:indexPath.row] isKindOfClass:[ENDocument class]]) {
        ENDocument *document = [self.list.array objectAtIndex:indexPath.row];
        cell.textLabel.text = document.title;
        cell.detailTextLabel.text = document.detailText;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[self.list.array objectAtIndex:indexPath.row] isKindOfClass:[ENList class]]) {
        ENList *list = [self.list.array objectAtIndex:indexPath.row];
        if ([list.section isEqual:@"images"]) { // Transition to Photo Gallery
			TathagataGalleryViewController *controller = [[TathagataGalleryViewController alloc] init];
            [self.navigationController pushViewController:controller animated:YES];
        } else { // Transition to table view
			TableViewController *tableViewController = [[TableViewController alloc] init];
			tableViewController.list = [self.list.array objectAtIndex:indexPath.row];
			[self.navigationController pushViewController:tableViewController animated:YES];
        }
    } else if ([[self.list.array objectAtIndex:indexPath.row] isKindOfClass:[ENDocument class]]) { // Transition to web view
        ENDocument *document = [self.list.array objectAtIndex:indexPath.row];
		[ENNavigation navigateToDocument:document fromTableViewController:self fromIndexPath:indexPath];
    }
}




- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [self.navigationItem setTitle:self.list.title];
}

@end
