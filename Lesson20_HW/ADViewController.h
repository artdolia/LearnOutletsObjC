//
//  ADViewController.h
//  Lesson20_HW
//
//  Created by A D on 1/5/14.
//  Copyright (c) 2014 AD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ADViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *blackCells;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *whiteCheckers;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *redCheckers;

@end
