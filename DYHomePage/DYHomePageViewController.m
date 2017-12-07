//
//  DYHomePageViewController.m
//  DYHomePage_Example
//
//  Created by farfetch on 2017/12/4.
//  Copyright © 2017年 jyo2206208. All rights reserved.
//

#import "DYHomePageViewController.h"
#import "FFCallCenter+DYShoppingBagHeader.h"

@interface DYHomePageViewController ()

@property (nonatomic, strong) UIImageView *bkImageView;

@end

@implementation DYHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUp];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUp {
    
    self.bkImageView = [[UIImageView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[DYHomePageViewController class]] pathForResource:@"DYHomePage" ofType:@"bundle"]];
    self.bkImageView.image = [[UIImage imageWithContentsOfFile:[bundle pathForResource:@"HomePage" ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.view addSubview:self.bkImageView];
    
    self.navigationItem.title = @"farfetch";
    
    
    UIBarButtonItem *rightBarButtonItemIcon = [[UIBarButtonItem alloc] initWithImage:[[FFCallCenter sharedInstance] bagIconImage] style:UIBarButtonItemStyleDone target:self action:@selector(presentBagController)];
    UIBarButtonItem *rightBarButtonItemCount = [[UIBarButtonItem alloc] initWithTitle:[[FFCallCenter sharedInstance] productCount] style:UIBarButtonItemStyleDone target:self action:@selector(presentBagController)];

    self.navigationItem.rightBarButtonItems = @[rightBarButtonItemIcon,rightBarButtonItemCount];
}

- (void) presentBagController {
    [self presentViewController:[[FFCallCenter sharedInstance] shoppingBagViewController] animated:YES completion:nil];
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
