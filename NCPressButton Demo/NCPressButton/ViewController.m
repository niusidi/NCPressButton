//
//  ViewController.m
//  NCPressButton
//
//  Created by @n_city on 16/6/23.
//  Copyright © 2016年 TSINOVA. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+NCPressButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button1 = [UIButton pressButtonWithColor:[UIColor lightGrayColor] frame:CGRectMake(20, 100, self.view.frame.size.width-40, 50) title:@"NCPressButton" cornerRadius:8];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton pressButtonWithImage:[UIImage imageNamed:@"NCIcon"] frame:CGRectMake(20, 180, self.view.frame.size.width-40, 50)];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton pressButtonWithImage:[UIImage imageNamed:@"NCIcon"] imageColor:[UIColor redColor] frame:CGRectMake(20, 260, self.view.frame.size.width-40, 50)];
    [self.view addSubview:button3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
