//
//  ViewController.m
//  Animations
//
//  Created by Chris on 4/11/13.
//  Copyright (c) 2013 Chris McKnight. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.label.layer.backgroundColor = [UIColor grayColor].CGColor;
    self.label.textColor = [UIColor whiteColor];
}

- (IBAction)animateLabel:(id)sender
{
    CALayer *theLayer = self.label.layer;
    
    [UIView animateWithDuration:1.0 animations:^{
        theLayer.backgroundColor = [UIColor blueColor].CGColor;
    } completion:^(BOOL finished){
        CABasicAnimation *colorAnim2 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
        colorAnim2.fromValue = [UIColor blueColor];
        colorAnim2.toValue = [UIColor grayColor];
        colorAnim2.duration = 1.0;
        [theLayer addAnimation:colorAnim2 forKey:@"backgroundColor"];
        
        theLayer.backgroundColor = [UIColor grayColor].CGColor;

    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
