//
//  Tweet.h
//  Twitter
//
//  Created by Catherine Trishina on 02/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Tweet : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *date;
@property (strong, nonatomic) User *userProfile;

- (id)initWithText:(NSString *)theText
            userProfile:(User *)theUserProfile
              date:(NSString *)theDate;

@end
