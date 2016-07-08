//
//  ShoppingCategoriesTableViewController.m
//  Groceries
//
//  Created by Carson Capper on 6/29/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import "GroceryCategoryTableViewController.h"
#import "AddCategoriesViewController.h"

@interface GroceryCategoryTableViewController ()
<AddCategoryDelegate>

@end

@implementation GroceryCategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Categories= [[NSMutableArray alloc] init];
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void) saveButtonWasPressed:(NSString *)category
{
    GroceryCategory *groceryCategory = [[GroceryCategory alloc] init];
    groceryCategory.groceryItems = [NSMutableArray array];
    groceryCategory.title = category;
    
    [self.Categories addObject:groceryCategory];
    
    [self.tableView reloadData];
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
    return self.Categories.count;
    
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString:@"AddGroceryCategorySegue"]){
        
    AddCategoriesViewController  *addCategoriesViewController= segue.destinationViewController;

    addCategoriesViewController.delegate = self;
        
    }
        else if ([segue.identifier isEqualToString:@"GroceryItemsSegue"]) {
            
            GroceryItemsTableViewController *groceryItemsTableViewController = (GroceryItemsTableViewController *) segue.destinationViewController;
            
            NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
            
            GroceryCategory *selectedGroceryCategory = _Categories
            [indexPath.row];
            groceryItemsTableViewController.selectedGroceryCategory =
            selectedGroceryCategory;
            
            
            
                    }
        
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
   
    
     GroceryCategory *groceryCategory= self.Categories[indexPath.row];
  cell.textLabel.text = groceryCategory.title;
    
    return cell;
    

}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
