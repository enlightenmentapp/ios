//
//  TableViewController.m
//  LCEnlightenment
//
//  Created by Liana Chu on 9/12/15.
//  Copyright (c) 2015 Liana Chu. All rights reserved.
//

#import "ENTableViewController.h"
#import "ENModel.h"
#import "ENDocument.h"
#import "ENList.h"
#import "ENBaseWebViewController.h"
#import "ENTathagataGalleryViewController.h"


@interface TableViewController ()

//@property (nonatomic) LCTableViewRowObjectType rowObjectType;

@end

@implementation TableViewController


//- (id)initWithRowObjectType:(LCTableViewRowObjectType)rowObjectType
//{
//    self = [super initWithStyle:UITableViewStylePlain];
//    if (self) {
//        self.rowObjectType = rowObjectType;
//    }
//    
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
 // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellReuseIdentifier];
    }

//    cell.textLabel.text = [self.list.array objectAtIndex:indexPath.row].title;  //why doesn't this work?!??!?!
//    cell.detailTextLabel.text = [self.list.array objectAtIndex:indexPath.row].detailText;
    
    if ([[self.list.array objectAtIndex:indexPath.row] isKindOfClass:[ENList class]]) {
        ENList *list = [self.list.array objectAtIndex:indexPath.row];
        cell.textLabel.text = list.title;
        cell.detailTextLabel.text = list.detailText;
    }
    
    else if ([[self.list.array objectAtIndex:indexPath.row] isKindOfClass:[ENDocument class]]) {
        ENDocument *document = [self.list.array objectAtIndex:indexPath.row];
        cell.textLabel.text = document.title;
        cell.detailTextLabel.text = document.detailText;
    }
    return cell;
}

//CELL WAS TAPPED
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[self.list.array objectAtIndex:indexPath.row] isKindOfClass:[ENList class]]) {
        
        ENList *list = [self.list.array objectAtIndex:indexPath.row];
    
        if ([list.section isEqual:@"images"]) {
       
            //Transition to Photo Gallery
            ENTathagataGalleryViewController *galleryViewController = [[ENTathagataGalleryViewController alloc] init];
            [self.navigationController pushViewController:galleryViewController animated:YES];
        }
        
        else {
        //Transition to table view
        
        TableViewController *tableViewController = [[TableViewController alloc] init];
        tableViewController.list = [self.list.array objectAtIndex:indexPath.row];
        [self.navigationController pushViewController:tableViewController animated:YES];
        }
    }
    
    else if ([[self.list.array objectAtIndex:indexPath.row] isKindOfClass:[ENDocument class]]) {
    //Transition to web view
        ENDocument *document = [self.list.array objectAtIndex:indexPath.row];
        ENBaseWebViewController *controller = [[ENBaseWebViewController alloc] init];
        if (document.filename)  {
            if ([document.filename rangeOfString:@"http"].location == NSNotFound) {
                [controller setupWebViewWithHTMLFileNamed:document.filename andTitle:document.title];
                [self.navigationController pushViewController:controller animated:YES];
            } else {
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:document.filename]];
                [tableView deselectRowAtIndexPath:indexPath animated:YES];
            }
        }
        else  {
            //no associated filename, like 'lonely struggle' so push nothing.
            [tableView deselectRowAtIndexPath:indexPath animated:YES];
            }
    }

}




-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [self.navigationItem setTitle:self.list.title];
}

@end