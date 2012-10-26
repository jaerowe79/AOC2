//
//  CostumeFactory.m
//  Week1AOC2
//
//  Created by Janis Jae on 10/25/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "CostumeFactory.h"
#import "VampireCostume.h"
#import "WitchCostume.h"
#import "ZombieCostume.h"

@implementation CostumeFactory

-(void)setAttributes:(ECostumeType)type name:(NSString*)name undead:(bool)isUndead

{
        undead = isUndead;
        costumeName = name;
        costumeType = type;

}

-(void)printName
{
    NSLog(@"Name=%@", costumeName);
}

@end
