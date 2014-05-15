//
//  TBMLocalizableItem.h
//  SWXibLocalizer Example
//
//  Created by Thore Bartholomäus on 15/05/14.
//
//

#import <Foundation/Foundation.h>

@protocol TBMLocalizableControl <NSObject>

- (void)applyLocalizedString:(NSString *)string;

@end
