//
//  GroceryItem.h
//  Groceries
//
//  Created by Carson Capper on 7/7/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroceryItem : UIViewController

@property (nonatomic, copy) NSString *item;
@property (nonatomic, strong) NSMutableArray *groceryItems;

@end
