//
//  TweetDetailViewController.h
//  Twitter
//
//  Created by Catherine Trishina on 02/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"

@interface TweetDetailViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) Tweet *tweetDetail;

@end
