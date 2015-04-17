//
//  cellGames.h
//  Table-Conti
//
//  Created by Walter Gonzalez Domenzain on 17/04/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cellGames : UITableViewCell


//Images
@property (strong, nonatomic) IBOutlet UIImageView *imgUser;

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UILabel *lblInfo;
@property (strong, nonatomic) IBOutlet UILabel *lblGender;
@property (strong, nonatomic) IBOutlet UILabel *lblLike;

//Actions
- (IBAction)btnLikePressed:(id)sender;
@end
