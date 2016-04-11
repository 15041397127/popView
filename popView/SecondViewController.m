//
//  SecondViewController.m
//  popView
//
//  Created by ZhangXu on 16/4/11.
//  Copyright © 2016年 zhangXu. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "TextOneViewController.h"
@interface SecondViewController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:@"你大爷" style:UIBarButtonItemStylePlain target:self action:@selector(popAction)];
    
    self.navigationItem.leftBarButtonItem =item;
    
    
    self.view.backgroundColor = [UIColor redColor];

//    __weak typeof (self) weakSelf = self;
//    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
//        self.navigationController.interactivePopGestureRecognizer.delegate = weakSelf;
//    }
//    self.navigationController.delegate = self;
    
    
    
    /**
     *  /
     *
     *  @param id 除了baseNaVC的代码有用之外
     *
     *  @return 下面也这句也能实现
     */
    
// //只有这句代码有用
//self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
    
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
    
    TextOneViewController *toVC = [[TextOneViewController alloc]init];

    
    
    [self.navigationController  pushViewController:toVC animated:YES];
    
    
}


//- (void)dealloc {
//    self.navigationController.interactivePopGestureRecognizer.delegate = nil;
//    self.navigationController.delegate = nil;
//}
//
//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
//    // fix 'nested pop animation can result in corrupted navigation bar'
//    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
//        self.navigationController.interactivePopGestureRecognizer.enabled = NO;
//    }
//    
//    [self.navigationController pushViewController:viewController animated:animated ];
//}

//- (void)navigationController:(UINavigationController *)navigationController
//       didShowViewController:(UIViewController *)viewController
//                    animated:(BOOL)animated {
//    if ([navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
//        //        //if ([[navigationController.viewControllers firstObject] isEqual:viewController]) {
//        //        if ([navigationController.viewControllers count] == 1) {
//        //            // Disable the interactive pop gesture in the rootViewController of navigationController
//        //            navigationController.interactivePopGestureRecognizer.enabled = NO;
//        //        } else {
//        //            // Enable the interactive pop gesture
//        //            navigationController.interactivePopGestureRecognizer.enabled = YES;
//        //        }
//        
//        navigationController.interactivePopGestureRecognizer.enabled = YES;
//        
//        
//    }
//}

-(void)popAction{
    
    
    [self.navigationController  popViewControllerAnimated:YES];
    
    
}

//
//- (void)viewDidAppear:(BOOL)animated{
//    
//    [super viewDidAppear:animated];
//    
//    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
//        self.navigationController.interactivePopGestureRecognizer.enabled = NO;
//    }
//
//    
//}
//
//- (void)viewWillDisappear:(BOOL)animated{
//    
//    [super viewWillDisappear:animated];
//    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
//        self.navigationController.interactivePopGestureRecognizer.enabled = YES;
//    }
//
//}







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
