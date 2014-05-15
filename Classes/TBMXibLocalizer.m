//
//  TBMXibLocalizer.m
//  SWXibLocalizer Example
//
//  Created by Thore Bartholomäus on 15/05/14.
//
//

#import "TBMXibLocalizer.h"

#import "TBMLocalizableControl.h"

#import <objc/objc-class.h>

@implementation TBMXibLocalizer

- (void)localizeControl:(SEL)controlName string:(NSString *)string {
    
    NSString *methodName = NSStringFromSelector(controlName);
    
    if ([self respondsToSelector:controlName]) {
        
        id <TBMLocalizableControl> control = [self valueForKey:methodName];
        
        if (control) {
            
            
            if (string) {
                
                [control applyLocalizedString:string];
                
            }
            else {
                
                NSLog(@"%@ no localized string for control '%@'.", self, methodName);
            }
            
        }
        else {
            
            NSLog(@"%@ unable to find control with name '%@'.", self, methodName);
        }
        
    }
    else {
        
        NSLog(@"%@ undefined control with name '%@'.", self, methodName);
    }
}

- (void)awakeFromNib {
    
    unsigned int methodCount;
    Method *methodList = class_copyMethodList(self.class, &methodCount);
    
    //Do the localization
    for (unsigned int i = 0; i < methodCount; i++) {
        
        SEL selector = method_getName(methodList[i]);
        NSString *selectorName = NSStringFromSelector(selector);
        if ([selectorName rangeOfString:@"__localize__"].location != NSNotFound) {
            
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            
            [self performSelector:selector];
            
#pragma clang diagnostic pop
            
        }
    }
    
    //Nullify the strong reference
    for (unsigned int i = 0; i < methodCount; i++) {
        
        SEL selector = method_getName(methodList[i]);
        NSString *selectorName = NSStringFromSelector(selector);
        if ([selectorName rangeOfString:@"set"].location != NSNotFound) {
            
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            
            [self performSelector:selector withObject:nil];
            
#pragma clang diagnostic pop
            
        }
    }
    free(methodList);
}

@end