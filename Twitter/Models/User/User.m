//
//  User.m
//  Twitter
//
//  Created by Catherine Trishina on 02/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//

#import "User.h"

@implementation User

-(id) init {
    return [self initWithName:nil
                        photo:nil
                    following:0
                    followers:0];
}

- (id)initWithName:(NSString *)theName
             photo:(NSString *)thePhoto
         following:(NSInteger)theFollowing
         followers:(NSInteger)theFollowers {
    self = [super init];
    if(self) {
        self.name = theName;
        self.photo = thePhoto;
        self.following = theFollowing;
        self.followers = theFollowers;
    }
    return self;
}


@end
