//
//  FISHellaMasterTableViewController.m
//  HellaCells
//
//  Created by Flatiron School on 6/21/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"


@interface FISHellaMasterTableViewController ()

@property (strong, nonatomic) NSMutableArray *data;

@end

@implementation FISHellaMasterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.accessibilityIdentifier = @"Table";
//    self.tableView.accessibilityLabel = @"Table";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source


//even if not written this method will be defaulted
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
   return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text =  [NSString stringWithFormat:@"%lu", indexPath.row +1]; //plus one bc index
    
    // Configure the cell...
    //cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    // the cell object has a text label and the text label has a text property ==> which is displayed on the cell
    // the index can be passed in from the property of the table view, which is IndexPath.row
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    
    FISHellaDetailViewController *detailVC = (FISHellaDetailViewController *) segue.destinationViewController;
    
    //    NSIndexPath *selectedIndexPath = [self.tableView.indexPathForSelectedRow];//will be helpful in the future
    ////
    //    UITableView *selectedCell = (UITableView *)sender;
    detailVC.number = [NSString stringWithFormat:@"%lu", self.tableView.indexPathForSelectedRow.row+1];

}


@end


//
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//
//    FISHellaDetailViewController *detailVC = (FISHellaDetailViewController *) segue.destinationViewController;
//
////    NSIndexPath *selectedIndexPath = [self.tableView.indexPathForSelectedRow];//will be helpful in the future
//////
////    UITableView *selectedCell = (UITableView *)sender;
//    detailVC.number = [NSString stringWithFormat:@"%lu", self.tableView.indexPathForSelectedRow.row+1];
//}


//
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//
//    FISHellaDetailViewController *detailVC = (FISHellaDetailViewController *) segue.destinationViewController;
//
////    NSIndexPath *selectedIndexPath = [self.tableView.indexPathForSelectedRow];//will be helpful in the future
//////
////    UITableView *selectedCell = (UITableView *)sender;
//    detailVC.number = [NSString stringWithFormat:@"%lu", self.tableView.indexPathForSelectedRow.row+1];
//}