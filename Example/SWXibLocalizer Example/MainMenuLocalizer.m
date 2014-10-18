//
//  MainMenuLocalizer.m
//  SWXibLocalizer Example
//
//  Created by Thore Bartholomäus on 15/05/14.
//
//

#import "MainMenuLocalizer.h"

@interface MainMenuLocalizer ()

@property (strong) IBOutlet id aButton;

@end

@implementation MainMenuLocalizer

TBMXibLocalizeControl(aButton, NSLocalizedString(@"Hi I'm a button!", @""))

@end
