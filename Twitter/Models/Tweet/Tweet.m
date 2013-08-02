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
    self = [self initWithText:nil
                       author:nil
                       poster:nil
                         date:nil];
    
    self = [super init];
    return self;
}

- (id)initWithText:(NSString *)theText
            author:(NSString *)theAuthor
            poster:(NSString *)thePoster
              date:(NSString *)theDate {
    self = [super init];
    if(self) {
        self.text = theText;
        self.author = theAuthor;
        self.poster = thePoster;
        self.date = theDate;
        
    }
    return self;
}


@end
