//
//  AttributedImageLabelViewController.m
//  PartUI
//
//  Created by yxw.gome on 2019/2/20.
//  Copyright © 2019年 gome. All rights reserved.
//

#import "AttributedImageLabelViewController.h"

@interface AttributedImageLabelViewController ()

@property (nonatomic, strong) UILabel *mLabel;

@end

@implementation AttributedImageLabelViewController


- (UILabel *)mLabel {
    if(!_mLabel){
        _mLabel = [[UILabel alloc]initWithFrame:self.view.bounds];
        _mLabel.numberOfLines = 0;
        _mLabel.font = [UIFont systemFontOfSize:15];
        
        ///图文展示
        NSString *text = @"这是一段测试文案";
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:text attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor redColor],}];
        UIImage *image = [UIImage imageNamed:@"提奖标签"];
        NSTextAttachment *textAttachment = [[NSTextAttachment alloc]init];
        textAttachment.image = image;
        NSAttributedString *attributedImageAttachment = [NSAttributedString attributedStringWithAttachment:textAttachment];
        [attributedString appendAttributedString:attributedImageAttachment];
        [_mLabel setAttributedText:attributedString];
        
    }
    return _mLabel;
}


- (void)setUpSubViews{
    [self.view addSubview:self.mLabel];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpSubViews];
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
