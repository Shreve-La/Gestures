//
//  TapViewController.m
//  Gestures
//
//  Created by swcl on 2017-06-13.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController

-(void)viewDidLoad{

[super viewDidLoad];
CGFloat width = 100;
CGFloat height = 100;
CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-width/2, CGRectGetMidY(self.view.bounds)-height/2, width, height);

UIView *view = [[UIView alloc] initWithFrame:frame];

view.backgroundColor = [UIColor grayColor];
[self.view addSubview:view];

UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    
[view addGestureRecognizer:tapGesture];

}

-(void)viewTapped:(UITapGestureRecognizer *)sender{
    
    UIColor *color = [sender.view.backgroundColor isEqual:[UIColor grayColor]] ? [UIColor magentaColor] : [UIColor grayColor];
    
    sender.view.backgroundColor = color;

}


@end
