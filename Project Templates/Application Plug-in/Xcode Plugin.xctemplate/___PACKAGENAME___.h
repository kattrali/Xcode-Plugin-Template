//
//  ___PACKAGENAME___.h
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <AppKit/AppKit.h>

@class ___PACKAGENAME___;

static ___PACKAGENAME___ *sharedPlugin;

@interface ___PACKAGENAME___ : NSObject

+ (instancetype)sharedPlugin;
- (id)initWithBundle:(NSBundle *)plugin;

@property (nonatomic, strong, readonly) NSBundle* bundle;
@end