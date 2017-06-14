//
//  EdgeSwipeViewController.m
//  Gestures
//
//  Created by swcl on 2017-06-14.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "EdgeSwipeViewController.h"

@interface EdgeSwipeViewController (){

    BOOL open;

}

@end

@implementation EdgeSwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = 500;
    CGFloat height = 500;
    CGRect frame = CGRectMake(self.view.bounds.size.width-25, CGRectGetMidY(self.view.bounds)-height/2, width, height);
    
    UIView *yellowBox = [[UIView alloc] initWithFrame:frame];
    yellowBox.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellowBox];
    
    
    UIScreenEdgePanGestureRecognizer *rightEdgeRecognizer = [[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector (handleRightEdgeGesture:)];
    rightEdgeRecognizer.edges = UIRectEdgeRight;
    [yellowBox addGestureRecognizer:rightEdgeRecognizer];
    
}


-(void)handleRightEdgeGesture:(UIScreenEdgePanGestureRecognizer*)sender{
    if(!open){
    NSLog(@"Left Edge Swipe Detected. ");
        while(sender.view.center.x - sender.view.bounds.size.width/2 > self.view.bounds.size.width - 100) {
    CGPoint translationInView = [sender translationInView:self.view];
    CGPoint oldCenter = sender.view.center;
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x,  oldCenter.y);
    sender.view.center = newCenter;
    [sender setTranslation:CGPointZero inView:self.view];
        }
// need to set a x threshold, after which self.view is set to open position
        
        
//reference code from swipe view controller
//        CGFloat openCenterX = closedCenter.x - 125; // x axis moved 125 left
//        CGFloat openCenterY = closedCenter.y; // y axis stays the same
//        CGPoint newCenter = CGPointMake(openCenterX, openCenterY);
//        sender.view.center = newCenter;
//        open = YES;
//    }
//    else{
//        NSLog(@"Left Swipe Detected");
    }

    ;}


@end
