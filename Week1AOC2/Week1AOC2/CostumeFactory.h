//
//  CostumeFactory.h
//  Week1AOC2
//
//  Created by Janis Jae on 10/25/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CostumeClass.h"

typedef enum {
    COSTUMETYPE_VAMPIRE=0,
    COSTUMETYPE_WITCH,
    COSTUMETYPE_ZOMBIE
} ECostumeType;

typedef enum {
    VAMPIRE=12,
    WITCH=19,
    ZOMBIE=29
} ECostumePrice;

@interface CostumeFactory : NSObject
{
@protected
    ECostumeType costumeType;
    NSString *costumeName;
    ECostumePrice costumePrice;
    bool undead
}

-(void)setAttributes:(ECostumeType)type name:(NSString*)name isUndead:(bool)isUndead;

-(void)printName;

+(CostumeClass*)GetCostumePrice:(int)costumeType;

@end
