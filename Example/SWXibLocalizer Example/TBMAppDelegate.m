//
//  TBMAppDelegate.m
//  SWXibLocalizer Example
//
//  Created by Thore Bartholomäus on 15/05/14.
//
//

#import "TBMAppDelegate.h"

#import "TBMXibLocalizer.h"

@implementation TBMAppDelegate

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(willLocalize:)
                                                     name:TBMXbLocalizerWillStart
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(didLocalize:)
                                                     name:TBMXbLocalizerDidFinish
                                                   object:nil];
    }
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (void)willLocalize:(NSNotification *)notification {
    
    NSLog(@"Will localize: %@", notification);
}

- (void)didLocalize:(NSNotification *)notification {
    
    NSLog(@"Did localize: %@", notification);
}

@end
