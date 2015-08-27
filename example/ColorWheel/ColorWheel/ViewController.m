/*
 By: Justin Meiners
 
 Copyright (c) 2015 Justin Meiners
 Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
 */

#import "ViewController.h"
#import "ISColorWheel.h"

@interface ViewController () <ISColorWheelDelegate>
{
    ISColorWheel* _colorWheel;
    UISlider* _brightnessSlider;
    UIView* _wellView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGSize size = self.view.bounds.size;
    
    CGSize wheelSize = CGSizeMake(size.width * .9, size.width * .9);
    
    _colorWheel = [[ISColorWheel alloc] initWithFrame:CGRectMake(size.width / 2 - wheelSize.width / 2,
                                                                 size.height * .1,
                                                                 wheelSize.width,
                                                                 wheelSize.height)];
    _colorWheel.delegate = self;
    _colorWheel.continuous = true;
    [self.view addSubview:_colorWheel];
    
    _brightnessSlider = [[UISlider alloc] initWithFrame:CGRectMake(size.width * .4,
                                                                   size.height * .8,
                                                                   size.width * .5,
                                                                   size.height * .1)];
    _brightnessSlider.minimumValue = 0.0;
    _brightnessSlider.maximumValue = 1.0;
    _brightnessSlider.value = 1.0;
    _brightnessSlider.continuous = true;
    [_brightnessSlider addTarget:self action:@selector(changeBrightness:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_brightnessSlider];
    
    _wellView = [[UIView alloc] initWithFrame:CGRectMake(size.width * .1,
                                                         size.height * .8,
                                                         size.width * .2,
                                                         size.height * .1)];
    
    _wellView.layer.borderColor = [UIColor blackColor].CGColor;
    _wellView.layer.borderWidth = 2.0;
    [self.view addSubview:_wellView];
}



- (void)changeBrightness:(UISlider*)sender
{
    [_colorWheel setBrightness:_brightnessSlider.value];
    [_wellView setBackgroundColor:_colorWheel.currentColor];
}

- (void)colorWheelDidChangeColor:(ISColorWheel *)colorWheel
{
    [_wellView setBackgroundColor:_colorWheel.currentColor];
}

    // Do any additional setup after loading the view, typically from a nib.

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
