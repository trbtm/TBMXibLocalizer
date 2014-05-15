//
//  MainMenuLocalizer.m
//  SWXibLocalizer Example
//
//  Created by Thore Bartholomäus on 15/05/14.
//
//

#import "TBMXibLocalizer.h"

@interface MainMenuLocalizer : TBMXibLocalizer

TBMXibDefineControl(aButton)

@end

@implementation MainMenuLocalizer

TBMXibLocalizeControl(aButton, NSLocalizedString(@"Hi I'm a button!", @""))

@end
