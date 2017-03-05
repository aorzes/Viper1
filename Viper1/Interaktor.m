//
//  Interaktor.m
//  Viper1
//
//  Created by Anton Orzes on 04/03/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "Interaktor.h"
#import "ViewController.h"

@implementation Interaktor

- (NSString *)setResult:(long)number {
    NSString *result = @"";
    switch (number) {
        case 1:
            result = @"Prva tipka je stisnuta";
            break;
        case 2:
            result = @"Druga tipka";
            break;
        default:
            break;
    }
    return result;
}

@end
