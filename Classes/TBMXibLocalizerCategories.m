//
//  TBMXibLocalizerCategories.m
//  SWXibLocalizer Example
//
//  Created by Thore Bartholomäus on 15/05/14.
//
//

#import <Foundation/Foundation.h>

//Protocols
#import "TBMLocalizableControl.h"

#pragma mark NSWindow

@interface NSWindow (XibLocalization) <TBMLocalizableControl>

@end

@implementation NSWindow (XibLocalization)

- (void)applyLocalizedString:(NSString *)string {
    
    self.title = string;
}

@end

#pragma mark -
#pragma mark NSButton

@interface NSButton (XibLocalization)

@end

@implementation NSButton (XibLocalization)

- (void)applyLocalizedString:(NSString *)string {
    
    self.title = string;
}

@end

#pragma mark -
#pragma mark NSTextField

@interface NSTextField (XibLocalization)

@end

@implementation NSTextField (XibLocalization)

- (void)applyLocalizedString:(NSString *)string {
    
    self.stringValue = string;
}

@end

#pragma mark -
#pragma mark NSTabView

@interface NSTabViewItem (XibLocalization) <TBMLocalizableControl>

@end

@implementation NSTabViewItem (XibLocalization)

- (void)applyLocalizedString:(NSString *)string {
    
    self.label = string;
}

@end

#pragma mark -
#pragma mark NSTableView

@interface NSTableColumn (XibLocalization) <TBMLocalizableControl>

@end

@implementation NSTableColumn (XibLocalization)

- (void)applyLocalizedString:(NSString *)string {
    
    [self.headerCell setStringValue:string];
}

@end

#pragma mark -
#pragma mark NSMenu

@interface NSMenuItem (XibLocalization) <TBMLocalizableControl>

@end

@implementation NSMenuItem (XibLocalization)

- (void)applyLocalizedString:(NSString *)string {
    
    self.title = string;
}

@end

#pragma mark -
#pragma mark NSToolbar

@interface NSToolbarItem (XibLocalization) <TBMLocalizableControl>

@end

@implementation NSToolbarItem (XibLocalization)

- (void)applyLocalizedString:(NSString *)string {
    
    self.label = string;
}

@end

