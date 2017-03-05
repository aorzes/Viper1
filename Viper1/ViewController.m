//
//  ViewController.m
//  Viper1
//
//  Created by Anton Orzes on 04/03/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "ViewController.h"
#import "Prezenter.h"

@interface ViewController (){
    Prezenter *prez;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    prez = [[Prezenter alloc]init];
    //koliko ima tipki na view
    for (UIButton *btn in self.view.subviews) {
        if (btn.tag>0) {
            NSDictionary *btnState = @{@"tagNumber": [NSNumber numberWithInteger:btn.tag],
                                       @"bState" : [NSNumber numberWithBool:@NO]};
            [prez.tipke addObject:btnState]; //u array se postavljaju tagovi tipki i status na NO
        }
    }
    
}
//koja tipka je stisnuta
- (IBAction)button:(id)sender {
    UIButton *btn = sender;
    //traži se tag tipke
    for (int i=0;i<prez.tipke.count;i++) {
        int tempTag = [[[prez.tipke objectAtIndex:i] objectForKey:@"tagNumber"]intValue];
        if(btn.tag == tempTag) //nađen tag - u arrayu se postavlja na YES
        {
            NSDictionary *tempDict = @{@"tagNumber": [NSNumber numberWithInteger:btn.tag],
                                       @"bState" : [NSNumber numberWithBool:@YES]};
            [prez.tipke replaceObjectAtIndex:i withObject:tempDict];
        } else { //sve ostale se postavljaju na NO
            NSDictionary *tempDict = @{@"tagNumber": [NSNumber numberWithInteger:btn.tag],
                                       @"bState" : [NSNumber numberWithBool:@NO]};
            [prez.tipke replaceObjectAtIndex:i withObject:tempDict];
        }
    }
    //prezenteru se šalje poruka i dobija odgovor
    _labela.text = [prez somtingDetect];
}




@end
