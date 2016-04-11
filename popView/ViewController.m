//
//  ViewController.m
//  popView
//
//  Created by ZhangXu on 16/4/11.
//  Copyright © 2016年 zhangXu. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)nextPage:(id)sender {

    SecondViewController *secVC = [[SecondViewController alloc]init];
    

    
    [self.navigationController pushViewController:secVC animated:YES];
 
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
