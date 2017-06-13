//
//  PanViewController.m
//  Gestures
//
//  Created by swcl on 2017-06-13.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
    CGPoint locationInView =[sender locationInView:self.view];
    sender.view.center = locationInView;
    
    
    
}

@end
