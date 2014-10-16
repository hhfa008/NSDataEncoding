//
//  md5.h
//  wepay
//
//  Created by hhfa on 14-10-13.
//  Copyright (c) 2017年 hhfa. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSString (md5Extensions)

- (NSString *) md5;

+ (NSString *) stringWithMd5:(unsigned char*)md5;



@end

@interface NSData (md5Extensions)

- (NSString*)md5;

@end
