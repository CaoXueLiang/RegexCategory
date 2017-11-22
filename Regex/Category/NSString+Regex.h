//
//  NSString+Regex.h
//  Regex
//
//  Created by bjovov on 2017/11/22.
//  Copyright © 2017年 caoxueliang.cn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Regex)
/// 匹配电话号码
- (BOOL)isPhoneNumber;

/// 匹配邮箱
- (BOOL)isEmail;

/// 匹配用户名或密码
- (BOOL)isUserNameOrPassword;

/// 匹配银行卡号
- (BOOL)isBankNumber;

/// 匹配QQ号码
- (BOOL)isQQNumber;

/// 匹配IP地址
- (BOOL)isIPAdress;

@end
