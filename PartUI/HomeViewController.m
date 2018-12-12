//
//  HomeViewController.m
//  PartUI
//
//  Created by yxw.gome on 2018/12/11.
//  Copyright © 2018年 gome. All rights reserved.
//

#import "HomeViewController.h"
#import "UIButton+RACCommandSupport.h"

@interface HomeViewController ()
@property(nonatomic, strong)UIButton *btn;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setUpSubViews{
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.btn];
    [self.btn.rac_command ]
}

- (void)setUpBtn {
    
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
