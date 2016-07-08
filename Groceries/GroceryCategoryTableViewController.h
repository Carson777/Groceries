//
//  ShoppingCategoriesTableViewController.h
//  Groceries
//
//  Created by Carson Capper on 6/29/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCategoriesViewController.h"
#import "GroceryCategory.h"
#import "GroceryItemsTableViewController.h"
#import "AddItemsViewController.h"

@interface GroceryCategoryTableViewController :UITableViewController
@property NSMutableArray* Categories;
@end
