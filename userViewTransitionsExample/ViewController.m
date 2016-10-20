//
//  ViewController.m
//  userViewTransitionsExample
//
//  Created by Giancarlo Valencia on 10/20/16.
//  Copyright © 2016 Mario Vizcaino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setUpView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setUpView{
    view1 = [[UIView alloc]initWithFrame:self.view.frame];
    view1.backgroundColor = [UIColor lightTextColor];
    view2 = [[UIView alloc]initWithFrame:self.view.frame];
    view2.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view1];
    [self.view sendSubviewToBack:view1];
}

-(void)doTransitionWithType:(UIViewAnimationTransition)animationTransitionType{
    if ([[self.view subviews] containsObject:view2 ]) {
        [UIView transitionFromView:view2
                            toView:view1
                          duration:2
                           options:animationTransitionType
                        completion:^(BOOL finished){
                            [view2 removeFromSuperview];
                        }];
        [self.view addSubview:view1];
        [self.view sendSubviewToBack:view1];
    }
    else{
        
        [UIView transitionFromView:view1
                            toView:view2
                          duration:2
                           options:animationTransitionType
                        completion:^(BOOL finished){
                            [view1 removeFromSuperview];
                        }];
        [self.view addSubview:view2];
        [self.view sendSubviewToBack:view2];
        
    }
}

// Buttons Events
-(IBAction)flipFromLeft:(id)sender
{
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromLeft];
    
}
-(IBAction)flipFromRight:(id)sender{
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromRight];
    
}
-(IBAction)flipFromTop:(id)sender{
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromTop];
    
}
-(IBAction)flipFromBottom:(id)sender{
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromBottom];
    
}
-(IBAction)curlUp:(id)sender{
    [self doTransitionWithType:UIViewAnimationOptionTransitionCurlUp];
    
}
-(IBAction)curlDown:(id)sender{
    [self doTransitionWithType:UIViewAnimationOptionTransitionCurlDown];
    
}
-(IBAction)dissolve:(id)sender{
    [self doTransitionWithType:UIViewAnimationOptionTransitionCrossDissolve];
    
}
-(IBAction)noTransition:(id)sender{
    [self doTransitionWithType:UIViewAnimationOptionTransitionNone];
    
}

@end
