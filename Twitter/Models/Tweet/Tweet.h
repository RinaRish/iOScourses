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

@property (nonatomic, copy) NSString *author;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *poster;
@property (nonatomic, copy) NSString *date;
//@property (strong, nonatomic) User *userProfile;

- (id)initWithText:(NSString *)theText
            author:(NSString *)theAuthor
            poster:(NSString *)thePoster
              date:(NSString *)theDate;


@end
