//
//  TNTViewController.h
//  PickerViewTutorial
//
//  Created by Joe Selvik on 7/6/14.
//  Copyright (c) 2014 The New Tricks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TNTViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;

@end
