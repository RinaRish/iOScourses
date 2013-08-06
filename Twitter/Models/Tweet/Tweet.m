//
//  Tweet.m
//  Twitter
//
//  Created by Catherine Trishina on 02/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

- (id)init
{
    return [self initWithText:nil
                  userProfile:nil
                         date:nil];
}

- (id)initWithText:(NSString *)theText
       userProfile:(User *)theUserProfile
              date:(NSString *)theDate {
    self = [super init];
    if(self) {
        self.text = theText;
        self.userProfile = theUserProfile;
        self.date = theDate;
        
    }
    return self;
}


@end
