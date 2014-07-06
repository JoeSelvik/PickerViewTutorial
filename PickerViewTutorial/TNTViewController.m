//
//  TNTViewController.m
//  PickerViewTutorial
//
//  Created by Joe Selvik on 7/6/14.
//  Copyright (c) 2014 The New Tricks. All rights reserved.
//

#import "TNTViewController.h"

@interface TNTViewController () {
    NSArray *_pickerData;
}

@end

@implementation TNTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Initialize Data
    _pickerData = @[@"Item1", @"Item 2", @"Item 3", @"Item 4", @"Item 5", @"Item 6"];
    
    // Connect Data
    self.picker.dataSource = self;
    self.picker.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UI Picker Delegate methods

// The number of columns of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}

@end
