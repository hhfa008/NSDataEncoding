//
//  XHexData.m
//  hhfa
//
//  Created by hhfa on 14-10-13.
//  Copyright (c) 2014年 hhfa. All rights reserved.
//

#import "XHexData.h"

@implementation NSData (HEX)

+ (NSData*) dataWithHexString:(NSString*)hexString
{
    char const *chars = hexString.UTF8String;
    NSUInteger charCount = strlen(chars);
    if (charCount % 2 != 0) {
        return nil;
    }

    NSUInteger byteCount = charCount / 2;
    uint8_t *bytes = malloc(byteCount);
    for (int i = 0; i < byteCount; ++i) {
        unsigned int value;
        sscanf(chars + i * 2, "%2x", &value);
        bytes[i] = value;
    }
    return [NSData dataWithBytesNoCopy:bytes length:byteCount freeWhenDone:YES];
}

- (NSString*) hexString
{
    NSString *hexString = [self description];
    hexString = [hexString stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"<>"]];
    hexString = [hexString stringByReplacingOccurrencesOfString:@" " withString:@""];
    hexString = [hexString uppercaseString];

    return hexString;
}

@end
