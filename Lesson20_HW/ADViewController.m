//
//  ADViewController.m
//  Lesson20_HW
//
//  Created by A D on 1/5/14.
//  Copyright (c) 2014 AD. All rights reserved.
//

#import "ADViewController.h"

@interface ADViewController ()

@end

@implementation ADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    
    UIColor *randomColor = [self randomColor];
    
    [self setColorOfViewCollection:self.blackCells withColor:randomColor];
    [self setColorOfViewCollection:self.whiteCheckers withColor:nil];
    [self setColorOfViewCollection:self.redCheckers withColor:nil];
}

#pragma mark - colorMethods -

-(void) setColorOfViewCollection:(NSArray *) collection withColor:(UIColor*) color{
    
    if(color == nil){
        
        for(UIView *view in collection){
            view.backgroundColor = arc4random()%2 ? [UIColor whiteColor] : [UIColor redColor];
        }
    }else{
        
        for(UIView *view in collection){
            view.backgroundColor = color;
        }
    }
}


-(UIColor *) randomColor{
    
    CGFloat r = [self randomZeroToOne];
    CGFloat g = [self randomZeroToOne];
    CGFloat b = [self randomZeroToOne];
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
    
}

-(CGFloat) randomZeroToOne{
    
    return (float)(arc4random()%256)/255;
}

@end
