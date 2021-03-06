//
//  UserAnnotation.m
//  Accessible AR Locator
//
//  Created by Pavel Belevtsev on 03.06.13.
//  Copyright (c) 2013 Injoit. All rights reserved.
//

#import "UserAnnotation.h"

@implementation UserAnnotation

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
    [self setTitle:nil];
    [self setSubtitle:nil];
    
    [super dealloc];
}

#pragma mark -
#pragma mark Getters and setters

- (NSString *)title {
    return _title;
}

- (NSString *)subtitle {
    return _subtitle;
}

- (void)setTitle:(NSString *)title {
    if (_title != title) {
        [_title release];
        _title = [title retain];
    }
}

- (void)setSubtitle:(NSString *)subtitle {
    if (_subtitle != subtitle) {
        [_subtitle release];
        _subtitle = [subtitle retain];
    }
}

- (CLLocationCoordinate2D)coordinate {
    return _coordinate;
}

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate {
    _coordinate = newCoordinate;
}

@end
