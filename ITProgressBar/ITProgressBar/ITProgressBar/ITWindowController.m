//
//  ITWindowController.m
//  ITProgressBar
//
//  Created by Kocsis Olivér on 2014.08.05..
//  Copyright (c) 2014 Ilija Tovilo. All rights reserved.
//

#import "ITWindowController.h"

@interface ITWindowController ()

@end

@implementation ITWindowController




- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    self.progressBar.backgroundColors = @[
                                          (id)CFBridgingRelease(CGColorCreateGenericRGB(0.f, 0.f, 0.f, 1.f)),
                                          (id)CFBridgingRelease(CGColorCreateGenericRGB(0.f, 0.f, 0.f, 1.f))
                                          ];
    self.progressBar.colorTint = [NSColor yellowColor];
    self.progressBar.colorTintOpacity = 1.f;
    self.progressBar.animates = NO;
    self.progressBar.animationDuration = 0.f;
    self.progressBar.borderColor = [NSColor whiteColor];

    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}




- (IBAction)toggleAnimation:(id)sender {
    self.progressBar.animates = !self.progressBar.animates;
}

- (IBAction)toggleHidden:(id)sender {
    [CATransaction begin]; {
        // Comment-out to disable animation
        // [CATransaction setValue: (id) kCFBooleanTrue forKey: kCATransactionDisableActions];
        
        [self.progressBar setHidden:!self.progressBar.isHidden];
    }[CATransaction commit];
}

- (IBAction)setFloatValue:(id)sender {
    [self.progressBar.animator setFloatValue:[sender doubleValue]];
}

- (IBAction)setHeight:(id)sender {
    self.heightConstraint.constant = [sender doubleValue];
    [self.window setContentBorderThickness:[sender doubleValue] + (7 * 2) forEdge:NSMinYEdge];
}




@end
