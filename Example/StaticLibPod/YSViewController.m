//
//  YSViewController.m
//  StaticLibPod
//
//  Created by Jensen on 12/15/2021.
//  Copyright (c) 2021 Jensen. All rights reserved.
//

#import "YSViewController.h"
//@import StaticLibPod;
//#import <StaticLibPod/StaticLib.h>
#import "YSTool.h"
#import "YSSubspec1Tool.h"
#import <StaticLibPod/YSTool.h>
#import <StaticLibPod/YSSubspec1Tool.h>
//#import <StaticLibPod/YSStaticFwkPerson.h>
//#import "YSStudent.h"

//const NSString *kURLErrorMsg = @"fdfdfdfd";

@interface YSViewController ()

@end

@implementation YSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [YSTool test];
    [YSSubspec1Tool class];
//    [YSStudent test];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
