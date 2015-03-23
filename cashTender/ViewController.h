//
//  ViewController.h
//  cashTender
//
//  Created by Mark DeWald on 3/19/15.
//  Copyright (c) 2015 Mark DeWald. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

- (IBAction)productCostButton:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *productCostLabel;
@property (weak, nonatomic) IBOutlet UITextField *costEntry;
@property (weak, nonatomic) IBOutlet UITextField *amountEntry;

- (IBAction)makeChange:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *showChange;
@property (weak, nonatomic) IBOutlet UILabel *currentCash;
@property (weak, nonatomic) IBOutlet UITextField *cashDropAmount;

- (IBAction)makeCashDrop:(UIButton *)sender;


@end

