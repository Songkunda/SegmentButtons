//
//  ViewController.m
//  segmentButtons
//
//  Created by 宋昆达 on 16/4/12.
//  Copyright © 2016年 宋昆达. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *maskView;//图层
@property (weak, nonatomic) IBOutlet UIView *bottmView;//底层
@property (weak, nonatomic) IBOutlet UIView *topView;//被渲染

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.topView.maskView = self.maskView;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnDown:(UIButton *)sender {
//    CGFloat time =  fabs(sender.center.x - self.maskView.center.x)/self.view.frame.size.width;
    CGFloat time =  fabs(sender.center.x - self.maskView.center.x)/100;
    [UIView animateWithDuration:time animations:^{
        self.maskView.center = sender.center;
    }];
    
    // do sth.
}

@end
