//
//  RotationViewController.m
//  Gestures
//
//  Created by swcl on 2017-06-14.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    // View setup
    CGFloat width = 150;
    CGFloat height = 150;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-width/2, CGRectGetMidY(self.view.bounds)-height/2, width, height);
    UIView *cubeView = [[UIView alloc] initWithFrame:frame];
    cubeView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:cubeView];
    
    
    UIRotationGestureRecognizer *rotationRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector (handleRotation:)];
    [cubeView addGestureRecognizer:rotationRecognizer];
}

-(void)handleRotation:(UIRotationGestureRecognizer*)sender{
    
    sender.view.transform = CGAffineTransformRotate(sender.view.transform, sender.rotation);
    sender.rotation = 0;
    
    }



@end
