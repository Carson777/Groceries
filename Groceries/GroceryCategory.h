//
//  GroceryCategory.h
//  Groceries
//
//  Created by Carson Capper on 6/30/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroceryCategory : UIViewController

@property (nonatomic, copy) NSString *category;
@property (nonatomic, strong) NSMutableArray *groceryItems;

@end
