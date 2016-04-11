//
//  TextOneViewController.m
//  popView
//
//  Created by ZhangXu on 16/4/11.
//  Copyright © 2016年 zhangXu. All rights reserved.
//

#import "TextOneViewController.h"
#import "TextTwoViewController.h"
@interface TextOneViewController ()

@end

@implementation TextOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:@"你二爷" style:UIBarButtonItemStylePlain target:self action:@selector(popAction)];
    
    self.navigationItem.leftBarButtonItem =item;
    
    [self setupUI];
    // Do any additional setup after loading the view.
}

- (void)setupUI{
    
    UIButton *bt = [[UIButton alloc]init];
    
    bt.frame = CGRectMake(100, 100, 200, 200);
    
    bt.backgroundColor = [UIColor cyanColor];
    
    [bt setTitle:@"NEXT!" forState:UIControlStateNormal];
    

    [self.view addSubview:bt];
    
    [bt addTarget:self action:@selector(nextAction ) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)nextAction{
    
    NSLog(@"1111");
    
    TextTwoViewController *toVC = [[TextTwoViewController alloc]init];
    
    
    
    [self.navigationController  pushViewController:toVC animated:YES];
    
    
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
