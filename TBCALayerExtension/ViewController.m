//
//  ViewController.m
//  TBCALayerExtension
//
//  Created by tangbin on 16/8/6.
//  Copyright © 2016年 tangbin. All rights reserved.
//

#import "ViewController.h"
#import "UIView+TBCALayerExtension.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *firstView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _firstView.borderColor = [UIColor blackColor];
    _firstView.cornerRadius = 5;
    _firstView.borderWidth = 2;
    
//    _firstView.layer.backgroundColor = [UIColor blackColor].CGColor;
//    _firstView.layer.cornerRadius = 5;
//    _firstView.layer.borderWidth = 2;
//    _firstView.layer.masksToBounds = YES;
//    _firstView.layer.rasterizationScale = [UIScreen mainScreen].scale;
//    _firstView.layer.shouldRasterize = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
