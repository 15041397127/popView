//
//  TextTwoViewController.m
//  popView
//
//  Created by ZhangXu on 16/4/11.
//  Copyright © 2016年 zhangXu. All rights reserved.
//

#import "TextTwoViewController.h"

@interface TextTwoViewController ()

@end

@implementation TextTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:@"啥玩意" style:UIBarButtonItemStylePlain target:self action:@selector(popAction)];
    
    self.navigationItem.leftBarButtonItem =item;
    
    self.view.backgroundColor = [UIColor blueColor];
    // Do any additional setup after loading the view.
}

-(void)popAction{
    
    
    [self.navigationController  popViewControllerAnimated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
