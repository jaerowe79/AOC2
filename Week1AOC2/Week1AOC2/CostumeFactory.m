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
-(CostumeFactory*)GetPrice:(int)costumePrice
{
    if (costumePrice ==VAMPIRE){
        return[[CostumeFactory alloc] initWithDetails:VAMPIRE name:@"Vampire"];
    }
    else if (costumePrice ==WITCH){
        return[[CostumeFactory alloc] initWithDetails:WITCH name:@"Witch"];
    }
    else if (costumePrice ==ZOMBIE){
        return[[CostumeFactory alloc] initWithDetails:ZOMBIE name:@"Zombie"];
    }
    return nil;
}

@end
