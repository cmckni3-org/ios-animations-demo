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
    
//    // Animation 1
//    CAKeyframeAnimation* widthAnim = [CAKeyframeAnimation animationWithKeyPath:@"borderWidth"];
//    NSArray* widthValues = [NSArray arrayWithObjects:@1.0, @10.0, @5.0, @30.0, @0.5, @15.0, @2.0, @50.0, @0.0, nil];
//    widthAnim.values = widthValues;
//    widthAnim.calculationMode = kCAAnimationPaced;
//    
//    // Animation 2
//    CAKeyframeAnimation* colorAnim = [CAKeyframeAnimation animationWithKeyPath:@"borderColor"];
//    NSArray* colorValues = [NSArray arrayWithObjects:(id)[UIColor greenColor].CGColor,
//                            (id)[UIColor redColor].CGColor, (id)[UIColor blueColor].CGColor,  nil];
//    colorAnim.values = colorValues;
//    colorAnim.calculationMode = kCAAnimationPaced;
//    
//    // Animation group
//    CAAnimationGroup* group = [CAAnimationGroup animation];
//    group.animations = [NSArray arrayWithObjects:colorAnim, widthAnim, nil];
//    group.duration = 5.0;
//    
//    [theLayer addAnimation:group forKey:@"BorderChanges"];
    
//    CABasicAnimation* fadeAnim = [CABasicAnimation animationWithKeyPath:@"opacity"];
//    fadeAnim.fromValue = [NSNumber numberWithFloat:1.0];
//    fadeAnim.toValue = [NSNumber numberWithFloat:0.0];
//    fadeAnim.duration = 1.0;
//    [theLayer addAnimation:fadeAnim forKey:@"opacity"];
    
    // Change the actual data value in the layer to the final value.
//    theLayer.opacity = 0.0;
    
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
