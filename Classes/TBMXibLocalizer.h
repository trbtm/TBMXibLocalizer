//
//  TBMXibLocalizer.h
//  SWXibLocalizer Example
//
//  Created by Thore Bartholomäus on 15/05/14.
//
//

#import <Foundation/Foundation.h>

#import "TBMLocalizableControl.h"

#define TBMXibDefineControl(controlName) \
@property (strong) IBOutlet id <TBMLocalizableControl> controlName;

#define TBMXibLocalizeControl(controlName, localizedString) \
- (void)__localize__##controlName { \
    [self localizeControl:@selector(controlName) string:localizedString]; \
}

@interface TBMXibLocalizer : NSObject

- (void)localizeControl:(SEL)controlName string:(NSString *)string;

@end
