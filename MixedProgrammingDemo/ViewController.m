//
//  ViewController.m
//  MixedProgrammingDemo
//
//  Created by baijf on 4/5/16.
//  Copyright © 2016 Junne. All rights reserved.
//

#import "ViewController.h"
#import "MixedProgrammingDemo-Swift.h"
#import "MixedCTest.h"
#import "MixedCPPTest.hpp"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}



- (IBAction)swiftMethod:(id)sender {
    
    OneViewController *oneViewController = [[OneViewController alloc] init];
    [oneViewController swiftHelloWorld];
    NSArray *sum = [[NSArray alloc] initWithArray:[oneViewController twoSum:@[@1,@2,@3,@4] :4]];
    NSLog(@"sum = %@", sum);
    
    NSArray *sumHashmap = [[NSArray alloc] initWithArray:[oneViewController twoSumHashMap:@[@1,@2,@3,@4] : 3]];
    NSLog(@"sumHashMap = %@", sumHashmap);
}

- (IBAction)cMethod:(id)sender {
    cHelloWorld();
}

- (IBAction)cppMethod:(id)sender {
    
}

//- (void)jumpOneViewController
//{
//    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        OneViewController *oneViewController = [[OneViewController alloc] init];
//        [self.navigationController pushViewController:oneViewController animated:YES];
//    });
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
