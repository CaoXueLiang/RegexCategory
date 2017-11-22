//
//  NSString+Regex.m
//  Regex
//
//  Created by bjovov on 2017/11/22.
//  Copyright © 2017年 caoxueliang.cn. All rights reserved.
//

#import "NSString+Regex.h"

@implementation NSString (Regex)
- (BOOL)isPhoneNumber{
    NSString *phoneRegex = @"1[3578][0-9]{9}";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    return [predicate evaluateWithObject:self];
}

- (BOOL)isEmail{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

/*由数字和字母组成6-12，则不能为纯数字和纯字母组成的*/
- (BOOL)isUserNameOrPassword{
    NSString *emailRegex = @"^(?![0-9]+$)(?![a-zA-Z]$)[0-9a-zA-Z]{6,12}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

/*银行卡号是16位或者19位*/
- (BOOL)isBankNumber{
    NSString *emailRegex = @"^[0-9]{16}|[0-9]{19}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

/*腾讯QQ号从10000开始*/
- (BOOL)isQQNumber{
    NSString *emailRegex = @"^[1-9][0-9]{4,}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

/*I地址的每个字段都在(0~255)之间，例如:192.168.0.00*/
- (BOOL)isIPAdress{
    NSString *emailRegex = @"^([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

@end
