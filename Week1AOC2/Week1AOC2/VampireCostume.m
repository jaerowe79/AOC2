//
//  VampireCostume.m
//  Week1AOC2
//
//  Created by Janis Jae on 10/25/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "VampireCostume.h"
#import "CostumeFactory.h"

@implementation VampireCostume

-(id)init
{
    if (self = [super init])
    {
        [self SetAttributes:COSTUMETYPE_VAMPIRE name:@"Vampire" isUndead:true];
    }
    return self;
}
-(void)printName
{
    [super printName];

    NSLog(@"The name of this costume is=%@", costumeName);

}

@end
