//
//  DYHomePageViewController.m
//  DYHomePage_Example
//
//  Created by farfetch on 2017/12/4.
//  Copyright © 2017年 jyo2206208. All rights reserved.
//

#import "DYHomePageViewController.h"

@interface DYHomePageViewController ()

@property (nonatomic, strong) UILabel *homeLabel;

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
    self.view.backgroundColor = [UIColor whiteColor];
    self.homeLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 300, 100)];
    self.homeLabel.text = @"This is HomePage";
    [self.view addSubview:self.homeLabel];
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
