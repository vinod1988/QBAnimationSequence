//
//  QBAnimationGroup.m
//  QBAnimationSequenceTest
//
//  Created by questbeat on 2012/09/29.
//  Copyright (c) 2012年 questbeat. All rights reserved.
//

#import "QBAnimationGroup.h"

//#import "QBAnimationItem.h"

@implementation QBAnimationGroup

@synthesize items = _items;
@synthesize waitUntilDone = _waitUntilDone;

- (id)init
{
    self = [super init];
    
    if(self) {
        self.items = nil;
        self.waitUntilDone = YES;
    }
    
    return self;
}

+ (id)groupWithItems:(NSArray *)items
{
    return [[[self alloc] initWithItems:items] autorelease];
}

- (id)initWithItems:(NSArray *)items
{
    self = [self init];
    
    if(self) {
        self.items = items;
    }
    
    return self;
}

@end