//
//  TweetViewController.m
//  Twitter
//
//  Created by Catherine Trishina on 02/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//

#import "TweetViewController.h"
#import "TweetCell.h"
#import "Tweet.h"
#import "TweetDetailViewController.h"

@interface TweetViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *tweets;
@end

@implementation TweetViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    

    self.tweets = [NSMutableArray arrayWithCapacity:5];

    
    Tweet *tweetOne = [[Tweet alloc] initWithText:@"Hello World"
                                      userProfile:[[User alloc] initWithName:@"Kate" photo:@"ShawshankRedemption_poster.jpg" following:0 followers:0]
                                             date:@"today"];
    [self.tweets addObject:tweetOne];
    
    Tweet *tweetTwo = [[Tweet alloc] initWithText:@"Good morning"
                                      userProfile:[[User alloc] initWithName:@"Sam" photo:@"TheGodfather_poster.jpg" following:0 followers:0]
                                             date:@"today"];
    [self.tweets addObject:tweetTwo];
    
    Tweet *tweetThree = [[Tweet alloc] initWithText:@"Good night"
                                             userProfile:[[User alloc] initWithName:@"Bill" photo:@"TheGodfatherPart2_poster.jpg" following:0 followers:0]
                                               date:@"today"];
    [self.tweets addObject:tweetThree];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView Data Source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tweets.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"TweetCell";
    TweetCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    Tweet *tweet = (self.tweets)[indexPath.row];
    
    cell.name.text = tweet.userProfile.name;
    cell.tweetText.text = tweet.text;
    cell.poster.image = [UIImage imageNamed:tweet.userProfile.photo];
    return cell;
}



#pragma mark - UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"TweetSegue"]) {
        TweetDetailViewController *vc = (TweetDetailViewController *)segue.destinationViewController;
        vc.tweetDetail = self.tweets[[self.tableView indexPathForSelectedRow].row]; //@"My label"; 
       
    }
}

@end
