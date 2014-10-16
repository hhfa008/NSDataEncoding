//
//  md5.m
//  hhfa
//
//  Created by hhfa on 13-10-28.
//  Copyright (c) 2014年 hhfa. All rights reserved.
//

#import "NSString+md5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (md5Extensions)

- (NSString *) md5
{
    const char *cStr = [self UTF8String];
    unsigned char result[16];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), result );
    return [NSString stringWithMd5:result];
}

+ (NSString *) stringWithMd5:(unsigned char*)md5
{
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            md5[0], md5[1], md5[2], md5[3],
            md5[4], md5[5], md5[6], md5[7],
            md5[8], md5[9], md5[10], md5[11],
            md5[12], md5[13], md5[14], md5[15]
            ];
}

@end

@implementation NSData (md5Extensions)

- (NSString*)md5
{
    unsigned char result[16];
    CC_MD5( self.bytes, (CC_LONG)self.length, result );
    return [NSString stringWithMd5:result];
}

@end
