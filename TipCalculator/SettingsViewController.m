//
//  SettingsViewController.m
//  TipCalculator
//
//  Created by Fabián Uribe Herrera on 1/19/15.
//  Copyright (c) 2015 fabian. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

- (IBAction)onSelect:(id)sender;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSelect:(id)sender {
    
    int defaultTipIndex = (int)self.tipControl.selectedSegmentIndex;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:defaultTipIndex forKey:@"default_index"];
    [defaults synchronize];
}

@end
