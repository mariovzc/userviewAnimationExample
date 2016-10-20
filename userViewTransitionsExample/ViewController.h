//
//  ViewController.h
//  userViewTransitionsExample
//
//  Created by Giancarlo Valencia on 10/20/16.
//  Copyright © 2016 Mario Vizcaino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIView *view1;
    UIView *view2;
}

-(IBAction)flipFromLeft:(id)sender;
-(IBAction)flipFromRight:(id)sender;
-(IBAction)flipFromTop:(id)sender;
-(IBAction)flipFromBottom:(id)sender;
-(IBAction)curlUp:(id)sender;
-(IBAction)curlDown:(id)sender;
-(IBAction)dissolve:(id)sender;
-(IBAction)noTransition:(id)sender;

@end

