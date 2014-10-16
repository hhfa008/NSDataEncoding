//
//  NSData+Encoding.m
//  hhfa
//
//  Created by hhfa on 13-10-28.
//  Copyright (c) 2014年 hhfa. All rights reserved.
//

#import "NSData+Encoding.h"
#import "XBase64Data.h"
#import "XHexData.h"

@implementation NSData (Encoding)

+ (NSData*) dataWithString:(NSString*)string usingEncoding:(XDataEncoding)encoding
{
    switch (encoding)
    {
        case XDataBase64Encoding:
            return [NSData dataFromBase64String:string];
        case XDataHexEncoding:
            return [NSData dataWithHexString:string];
        default:
            return [string dataUsingEncoding:NSUTF8StringEncoding];
    }
}

- (NSString*) stringUsingEncoding:(XDataEncoding)encoding
{
    switch (encoding)
    {
        case XDataBase64Encoding:
            return [self base64EncodedString];
        case XDataHexEncoding:
            return [self hexString];
        default:
            return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
    }
}

@end
