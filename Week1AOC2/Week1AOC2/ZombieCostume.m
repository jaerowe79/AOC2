//
//  ZombieCostume.m
//  Week1AOC2
//
//  Created by Janis Jae on 10/25/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "ZombieCostume.h"
#import "CostumeFactory.h"


@implementation ZombieCostume

-(id)init
{
    if (self = [super init])
    {
        [self SetAttributes:COSTUMETYPE_ZOMBIE name:@"Zombie" isUndead:true];
    }
    return self;
}

-(void)printName
{
    [super printName];
    NSLog(@"The name of this costume is=%@", costumeName);
}

@end
