//
//  User.h
//  Twitter
//
//  Created by Catherine Trishina on 02/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *photo;
@property (nonatomic) NSInteger following;
@property (nonatomic) NSInteger followers;

- (id)initWithName:(NSString *)theName
             photo:(NSString *)thePhoto
         following:(NSInteger)theFollowing
         followers:(NSInteger)theFollowers;

@end
