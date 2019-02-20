//
//  HomeViewController.m
//  PartUI
//
//  Created by yxw.gome on 2018/12/11.
//  Copyright © 2018年 gome. All rights reserved.
//

#import "HomeViewController.h"
#import "ReactiveObjC.h"
#import "AttributedImageLabelViewController.h"

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong)UIButton *btn;
@property (nonatomic, strong) UITableView *mTableView;


@end

@implementation HomeViewController

- (UITableView *)mTableView {
    if (!_mTableView) {
        _mTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mTableView.delegate = self;
        _mTableView.dataSource = self;
    }
    return _mTableView;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpSubViews];
}

- (void)setUpSubViews{
//    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [self.view addSubview:self.btn];
//    [[self.btn rac_signalForControlEvents:UIControlEventTouchUpInside]subscribeNext:^(__kindof UIControl * _Nullable x) {
//
//    }];
    [self.view addSubview:self.mTableView];
    
    
}

- (void)setUpBtn {
    
}

#pragma mark - UITableViewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"HomeBaseCellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = @"";
    if (indexPath.row == 0) {
        cell.textLabel.text = @"AttributedImageLabel";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
            AttributedImageLabelViewController *vc = [[AttributedImageLabelViewController alloc]init];
            vc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}

@end
