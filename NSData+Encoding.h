//
//  NSData+Encoding.h
//  hhfa
//
//  Created by hhfa on 14-10-13.
//  Copyright (c) 2014年 hhfa. All rights reserved.
//

#import <Foundation/Foundation.h>

//数据编码类型
typedef enum {
    kDataUTF8Encoding      =     0, //UTF8编码
    XDataBase64Encoding    =     1, //base64编码
    XDataHexEncoding       =     2  //16进制编码
} XDataEncoding;


@interface NSData (Encoding)

/**
    将字符串形式的数据按指定的编码格式转换成NSData
    @param string  字符串形式的数据
    @returns NSData实例对象
 */
+ (NSData*) dataWithString:(NSString*)string usingEncoding:(XDataEncoding)encoding;

/**
    将NSData转换成以指定格式编码的字符串形式的数据
    @returns 字符串形式的数据
 */
- (NSString*) stringUsingEncoding:(XDataEncoding)encoding;

@end
