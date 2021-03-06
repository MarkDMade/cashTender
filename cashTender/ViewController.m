//
//  ViewController.m
//  cashTender
//
//  Created by Mark DeWald on 3/19/15.
//  Copyright (c) 2015 Mark DeWald. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSString *productCost;
@property (nonatomic) float runningTotal;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // start cash drawer with $150.00
    
    self.runningTotal = 150.00f;
    self.currentCash.text = [NSString stringWithFormat:@"%0.2f", self.runningTotal];
    
    [self.costEntry setDelegate:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)productCostButton:(id)sender
{
    self.productCost = self.costEntry.text;
    [self textFieldShouldReturn];
    self.productCostLabel.text = self.productCost;
}

- (void)textFieldShouldReturn
{
    [self.costEntry resignFirstResponder];
    
    // CashManagerViewController
}


- (IBAction)makeChange:(UIButton *)sender
{
    double paidAmount;
    double itemCost;
    double changeMade;
    
    paidAmount = [self.amountEntry.text doubleValue];
    itemCost = [self.productCost doubleValue];
    changeMade = paidAmount - itemCost;
    self.runningTotal += itemCost;
    self.currentCash.text = [NSString stringWithFormat:@"%0.2f", self.runningTotal];
    self.showChange.text = [NSString stringWithFormat:@"%0.2f", changeMade];
    
}

- (bool)cashDrop:(float)amount
{
    
    self.runningTotal -= amount;
    self.currentCash.text = [NSString stringWithFormat:@"%0.2f", self.runningTotal];
    
    return YES;
}

- (IBAction)makeCashDrop:(UIButton *)sender
{

    float amount = [self.cashDropAmount.text doubleValue];
    bool done = [self cashDrop:amount];
    if (done)
    {
        NSLog(@"We got it");
    }
}

@end
