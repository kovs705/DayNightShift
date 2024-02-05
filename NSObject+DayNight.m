//
//  NSObject+DayNight.m
//  DayNightShift
//
//  Created by Eugene Kovs on 04.02.2024.
//

#import "NSObject+DayNight.h"
#import <AppKit/AppKit.h>
#import "DayNight-Bridging-Header.h"
#import <DayNightShift-Swift.h>

@implementation NSObject (DayNight)

- (id)xmas_initWithIcon:(id)icon
                message:(NSString *)message
           parentWindow:(id)parentWindow
               duration:(double)duration {
    if (icon && [ToggleManager isEnabled] && [message containsString:@"Succeeded"]) {
        NSBundle *bundle = [NSBundle bundleWithIdentifier:@"com.CodingKovs.DayNightShift"];

//        Gift *gift = [GiftManager makeGift];

//        NSImage *image = [bundle imageForResource:gift.imageName];
//        NSInteger * time =
        
//        [self xmas_initWithIcon:icon message:gift.message parentWindow:parentWindow duration:duration];

        if ([self isKindOfClass:[NSPanel class]]) {
            NSPanel *panel = (id)self;

            if ([panel.contentView isKindOfClass:[NSVisualEffectView class]]) {
                NSVisualEffectView *e = (id)panel.contentView;

                e.material = NSVisualEffectMaterialTitlebar;

                // Set back to original
//                image.template = NO;
            }
        }

        return self;
    }

    return [self xmas_initWithIcon:icon message:message parentWindow:parentWindow duration:duration];
}

@end
