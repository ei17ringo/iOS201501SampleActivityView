//
//  ViewController.m
//  SampleActivityView
//
//  Created by Eriko Ichinohe on 2015/01/16.
//  Copyright (c) 2015年 Eriko Ichinohe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapShare:(id)sender {
    NSString *text  = @"googleのリンクあります";
    NSURL    *url   = [NSURL URLWithString:@"http://google.com"];
    
    NSArray *activityItems = @[text, url];
    
    UIActivityViewController *activityView = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    
    [self presentViewController:activityView animated:YES completion:nil];
}
@end
