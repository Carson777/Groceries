//
//  AddCategoriesViewController.h
//  Groceries
//
//  Created by Carson Capper on 6/29/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddCategoryDelegate <NSObject>

-(void) saveButtonWasPressed: (NSString *) category;

@end

@interface AddCategoriesViewController : UIViewController

{
    
}

@property (nonatomic, weak) IBOutlet UITextField *categoryName;

@property (nonatomic, weak) id<AddCategoryDelegate> delegate;

@end
