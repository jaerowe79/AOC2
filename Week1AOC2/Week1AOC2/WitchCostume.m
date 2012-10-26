//
//  WitchCostume.m
//  Week1AOC2
//
//  Created by Janis Jae on 10/25/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "WitchCostume.h"
#import "CostumeFactory.h"


@implementation WitchCostume

-(id)init
{
    if (self = [super init])
    {
        [self SetAttributes:COSTUMETYPE_WITCH name:@"Witch" isUndead:false];
    }
    return self;
}

-(void)printName
{
    [super printName];
    NSLog(@"The name of this costume is=%@", costumeName);

}
@end
