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
#import "CostumeClass.h"

@implementation CostumeFactory

-(void)setAttributes:(ECostumeType)type name:(NSString*)name undead:(bool)isUndead;

{
        undead = isUndead;
        costumeName = name;
        costumeType = type;
        costumePrice = costumePrice;

}
+(CostumeClass*)GetPrice:(int)costumePrice
{
    if (costumePrice == VAMPIRE){
        return[[CostumeClass alloc] initWithDetails:VAMPIRE name:@"Vampire"];
    }
    else if (costumePrice == WITCH){
        return[[CostumeClass alloc] initWithDetails:WITCH name:@"Witch"];
    }
    else if (costumePrice == ZOMBIE){
        return[[CostumeClass alloc] initWithDetails:ZOMBIE name:@"Zombie"];
    }
    return nil;
}

-(void)printName
{
    NSLog(@"Name=%@", costumeName);
}

@end
