//
//  ITWindowController.h
//  ITProgressBar
//
//  Created by Kocsis Olivér on 2014.08.05..
//  Copyright (c) 2014 Ilija Tovilo. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ITProgressBar.h"

@interface ITWindowController : NSWindowController
@property (nonatomic, weak) IBOutlet ITProgressBar *progressBar;
@property (assign) IBOutlet NSLayoutConstraint *heightConstraint;

@end
