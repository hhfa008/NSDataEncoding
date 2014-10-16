//
//  XHexData.h
//  hhfa
//
//  Created by hhfa on 14-10-13.
//  Copyright (c) 2014年 hhfa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (HEX)

/*
    将按16进制格式编码的字符串形式的数据转换成NSData
    @param hexString  16进制编码的数据字符串
    @returns NSData实例对象
 */
+ (NSData*) dataWithHexString:(NSString*)hexString;

/**
    将NSData转换成以16进制格式编码的字符串形式的数据
    @returns 以16进制格式编码的字符串形式的数据
 */
- (NSString*) hexString;

@end
