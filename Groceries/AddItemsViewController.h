//
//  AddItemsViewController.h
//  Groceries
//
//  Created by Carson Capper on 7/5/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddItemDelegate <NSObject>

-(void) saveButtonWasPressed: (NSString *) item;

@end

@interface AddItemsViewController : UIViewController

{
    
}

@property (nonatomic, weak) IBOutlet UITextField *itemName;

@property (nonatomic, weak) id<AddItemDelegate> delegate;

@end
