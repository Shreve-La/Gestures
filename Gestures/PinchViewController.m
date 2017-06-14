//
//  PinchViewController.m
//  Gestures
//
//  Created by swcl on 2017-06-13.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController (){


    UIView *view;
    CGFloat scale;
}

@end

@implementation PinchViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-width/2, CGRectGetMidY(self.view.bounds)-height/2, width, height);
    
    view = [[UIView alloc] initWithFrame:frame];
    
    view.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:view];
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(viewPinched:)];
    [view addGestureRecognizer:pinchGesture];

}

-(void)viewPinched:(UIPinchGestureRecognizer *)sender{
    
// draft code to have pinched shape preserver state between multiple pinches
    
//    switch (sender.state) {
//        case UIGestureRecognizerStateChanged:
//            // scale here
//            scale = sender.scale;
//            sender.view.transform = CGAffineTransformMakeScale(scale, scale);
//            scale = 1.0;
//
//
//            break;
//        case UIGestureRecognizerStateEnded:
//            view.frame  = sender.view.frame;
//            sender.view.transform = CGAffineTransformIdentity;
//            // store final frame
//            // reset transform to CGAffineTransformIdentity
//            break;
//            
//        default:
//            break;
//    }
    
    scale = sender.scale;
   sender.view.transform = CGAffineTransformMakeScale(scale, scale);
   NSLog(@"%f", scale);
   NSLog(@"%@", NSStringFromCGRect(sender.view.frame));
   scale = 1.0;
//   width = sender.view.bounds.size.width;
//   height = sender.view.bounds.size.width;
    
}

@end
