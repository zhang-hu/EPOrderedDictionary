//
//  EPViewController.m
//  EPOrderedDictionary
//
//  Created by zhang-hu on 03/01/2018.
//  Copyright (c) 2018 zhang-hu. All rights reserved.
//

#import "EPViewController.h"
#import <EPOrderedDictionary/EPOrderedDictionary.h>
//@import EPOrderedDictionary;

@interface EPViewController ()

@end

@implementation EPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    OrderedDictionary *ordered = [OrderedDictionary dictionaryWithObjectsAndKeys:@"d", @"d", @"a", @"a", @"w", @"w", @"i", @"i", nil];
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"d", @"d", @"a", @"a", @"w", @"w", @"i", @"i", nil];
    NSLog(@"ordered: %@\nnormal: %@", ordered, dict);

    for (id key in ordered) {
        NSLog(@"%@: %@", key, ordered[key]);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
