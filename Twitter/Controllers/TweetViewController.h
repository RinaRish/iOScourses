//
//  TweetViewController.h
//  Twitter
//
//  Created by Catherine Trishina on 02/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TweetViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *tweets;
@property (nonatomic, weak) IBOutlet UITableView *tableView;


@end
