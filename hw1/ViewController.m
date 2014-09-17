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
    self.label.text = @"Just Got Up";
    
    _statusOfW = false;
    _statusOfB = false;
    _statusOfH = false;
    
    self.displayImage;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)wearGlassesButtonClicked{
    NSString *originText = [NSString stringWithString:self.label.text];
    NSString *displayWord = @"Just Wore Glasses";
    
    
    
    if (_statusOfW) {
        _statusOfW = false;
        self.label.text = @"  ";
    }
    else{
        _statusOfW = true;
        self.label.text = displayWord;
    }
    
    self.displayImage;
}

- (IBAction)brushTeethButtonClicked{
    NSString *originText = [NSString stringWithString:self.label.text];
    
     NSString *displayWord = @"Just Brushed Teeth";
    
    
    if (_statusOfB) {
        _statusOfB = false;
        self.label.text = @"  ";
    }
    else{
        _statusOfB = true;
        self.label.text = displayWord;
    }
    
    self.displayImage;
}

- (IBAction)combHairButtonClicked{
    
    NSString *displayWord = @"Just Comb Hair";
    BOOL oldStatus = _statusOfH;
    
    if (_statusOfH) {
        _statusOfH = false;
        self.label.text = @"  ";

    }
    else{
        _statusOfH = true;
        self.label.text = displayWord;

    }
    
    self.displayImage;
    
}

- (void) displayImage{
    /*
    NSString *display = [NSString stringWithFormat:@"Botton %@%@%@",_statusOfW ? @"YES" : @"NO", _statusOfB ? @"YES" : @"NO", _statusOfH? @"YES" : @"NO"];
    NSLog(@"%@", display);
     */
    
    NSString *string;
    
    
    if (_statusOfB == false) {
        if (_statusOfH == false) {
            if(_statusOfW == false){
                string = @"1.JPG";
            }
            else{
                string = @"2.JPG";
            }
        }
        else{
            if(_statusOfW == false){
                string = @"6.JPG";
            }
            else{
                string = @"7.JPG";
            }
        }
    }
    else{
        if (_statusOfH == false) {
            if (_statusOfW == false) {
                string = @"4.JPG";
            }
            else{
                string = @"3.JPG";
            }
        }
        else{
            if (_statusOfW == false) {
                string = @"5.JPG";
            }
            else{
                string = @"8.JPG";
            }
        }
    }
    UIImage *image = [UIImage imageNamed:string];
    self.imageDisplay.image = image;
    self.imageDisplay.clipsToBounds = YES;
    self.imageDisplay.contentMode = UIViewContentModeScaleAspectFill;
    
    
}

@end
