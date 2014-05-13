//
//  ViewController.m
//  Multiply
//
//  Created by Abdullah AlMubarak on 5/12/14.
//  Copyright (c) 2014 Abdullah AlMubarak - Brian Mathien. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;
@property (weak, nonatomic) IBOutlet UISlider *sliderControler;

@end

@implementation ViewController
- (IBAction)onCalculateButtonPressed:(id)sender

{
    int myNumberValue = [self.myNumber.text intValue];
    int myMultiplierValue = [self.myMultiplier.text intValue];
    int multiplication = myNumberValue * myMultiplierValue;

    self.myAnswer.text = [NSString stringWithFormat:@"%i", multiplication]; // very useful line of code to grab input

    if (multiplication % 3 == 0 && multiplication % 5 == 0)
{
    self.myAnswer.text = @"fizzbuzz";
}
    else if (multiplication % 3 == 0)
{
    self.myAnswer.text = @"fizz";
}
    else if (multiplication % 5 == 0)
{
    self.myAnswer.text = @"buzz";
}

    if (multiplication >20)
    {
        self.view.backgroundColor = [UIColor greenColor];
    }

    else if (multiplication <20)
    {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

- (IBAction)changeSlider:(UISlider *)sender

{
    self.myMultiplier.text = [NSString stringWithFormat: @"%.1f", [sender value]];

}

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//
//- (BOOL)textFieldShouldReturn: (UTTextField *) myNumber
//
//{
//
//    if (self.myNumber)
//
//{
//    [self.myNumber resignFirstResponder];
//
//}
//    return NO;
//}

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

@end
