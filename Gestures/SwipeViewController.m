//
//  SwipeViewController.m
//  Gestures
//
//  Created by swcl on 2017-06-13.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController (){

    BOOL open;
    CGPoint closedCenter;
    CGPoint openCenter;


}

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    open = NO;
    
    CGFloat width = CGRectGetMaxX(self.view.bounds)-20;
    CGFloat height = 50;
    CGRect frame = CGRectMake(20, CGRectGetMidY(self.view.bounds), width, height);
    
    UIView *brownView = [[UIView alloc] initWithFrame:frame];
    brownView.backgroundColor = [UIColor brownColor];
    
    UIView *whiteView = [[UIView alloc] initWithFrame:brownView.bounds];
    whiteView.backgroundColor = [UIColor whiteColor];
    
    brownView.clipsToBounds = YES;

    [self.view addSubview:brownView];
    
    [brownView addSubview:whiteView];
    
    closedCenter = whiteView.center;
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwipedLeft:)];
    swipeLeft.numberOfTouchesRequired = 1;
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [whiteView addGestureRecognizer:swipeLeft];

    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwipedRight:)];
    swipeRight.numberOfTouchesRequired = 1;
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [whiteView addGestureRecognizer:swipeRight];
    
}

-(void)viewSwipedLeft:(UISwipeGestureRecognizer*)sender{
    NSLog(@"Left Swipe Detected");
    if(!open){
        CGFloat openCenterX = closedCenter.x - 125; // x axis moved 125 left
        CGFloat openCenterY = closedCenter.y; // y axis stays the same
        CGPoint newCenter = CGPointMake(openCenterX, openCenterY);
        sender.view.center = newCenter;
        open = YES;
    }
    else{
        NSLog(@"Left Swipe Detected");
    }
}

-(void)viewSwipedRight:(UISwipeGestureRecognizer*)sender{
    NSLog(@"Right Swipe Detected");
    if(open){
        sender.view.center = closedCenter;
        open = NO;
    }
    else{
        NSLog(@"Right Swipe Detected");
    }
}

@end
