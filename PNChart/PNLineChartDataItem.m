//
// Created by HaRi on 18/10/16.
// Copyright (c) 2016 HaRi. All rights reserved.
//

#import "PNLineChartDataItem.h"

@interface PNLineChartDataItem ()

- (id)initWithY:(CGFloat)y andRawY:(CGFloat)rawY;

@property (readwrite) CGFloat y;    // should be within the y range
@property (readwrite) CGFloat rawY; // this is the raw value, used for point label.

@end

@implementation PNLineChartDataItem

+ (PNLineChartDataItem *)dataItemWithY:(CGFloat)y
{
    
    return [[PNLineChartDataItem alloc] initWithY:y andRawY:y];
}

+ (PNLineChartDataItem *)dataItemWithY:(CGFloat)y andRawY:(CGFloat)rawY {
    return [[PNLineChartDataItem alloc] initWithY:y andRawY:rawY];
}

- (id)initWithY:(CGFloat)y andRawY:(CGFloat)rawY
{
    if ((self = [super init])) {
        self.y = y;
        self.rawY = rawY;
    }

    return self;
}

@end
