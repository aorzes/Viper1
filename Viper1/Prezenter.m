//
//  Prezenter.m
//  Viper1
//
//  Created by Anton Orzes on 04/03/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "Prezenter.h"
#import "Interaktor.h"

@implementation Prezenter

- (instancetype)init {
    self = [super init];
    if (self) {
        _tipke = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSString *)somtingDetect {
    NSString *result = @"";
    for (NSDictionary *btnState in _tipke) { //u arrayu se traži koja tipka je stisnuta
        if ([[btnState objectForKey:@"bState"] boolValue]) {
            long buttonTag = [[btnState objectForKey:@"tagNumber"] integerValue];
            Interaktor *interactor = [[Interaktor alloc]init];
            result = [interactor setResult:buttonTag]; //prezenter šalje poruku interactoru
        }
    }
    return result; //vraća se rezultat koji je dao Interaktor
}

@end
