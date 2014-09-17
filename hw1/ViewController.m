//
//  ViewController.m
//  hw1
//
//  Created by ABC on 9/16/14.
//  Copyright (c) 2014 marcok. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)noiseRingButtonClicked{
    NSString *displayWord = @"Just Insert Nose Ring";
    
    self.label.text = displayWord;
}

- (IBAction)brushTeethButtonClicked{
     NSString *displayWord = @"Just Brushed Teeth";
    self.label.text = displayWord;
}

- (IBAction)justSpikedHairButtonClicked{
    NSString *displayWord = @"Just Spiked Hair";
    self.label.text = displayWord;
    
}

@end
