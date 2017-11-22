//
//  ViewController.m
//  Regex
//
//  Created by bjovov on 2017/11/22.
//  Copyright © 2017年 caoxueliang.cn. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Regex.h"

@interface ViewController ()
@property (nonatomic,strong) UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.navigationItem.title = @"首页";
    [self addSubviews];
    
    UIBarButtonItem *button = [[UIBarButtonItem alloc]initWithTitle:@"验证" style:UIBarButtonItemStylePlain target:self action:@selector(confirm)];
    self.navigationItem.rightBarButtonItem = button;
}

- (void)addSubviews{
    _textField = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, self.view.bounds.size.width - 40, 50)];
    _textField.layer.borderColor = [UIColor blueColor].CGColor;
    _textField.layer.borderWidth = 1;
    _textField.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:_textField];
}

- (void)confirm{
    
}

@end
