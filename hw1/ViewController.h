//
//  ViewController.h
//  hw1
//
//  Created by ABC on 9/16/14.
//  Copyright (c) 2014 marcok. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageDisplay;

@property (weak, nonatomic) IBOutlet UIButton *wearGlassesButton;
@property (weak, nonatomic) IBOutlet UIButton *combHairButton;
@property (weak, nonatomic) IBOutlet UIButton *brushTeethButton;

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)wearGlassesButtonClicked;
- (IBAction)brushTeethButtonClicked;
- (IBAction)combHairButtonClicked;

- (void) displayImage;

@property BOOL statusOfW;
@property BOOL statusOfB;
@property BOOL statusOfH;


@end
