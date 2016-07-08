//
//  GroceryItemsTableViewController.h
//  Groceries
//
//  Created by Carson Capper on 6/30/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryCategory.h"
#import "GroceryItem.h"
#import "addItemsViewController.h"

@interface GroceryItemsTableViewController : UITableViewController
@property (nonatomic, weak) GroceryCategory *selectedGroceryCategory;

@end
