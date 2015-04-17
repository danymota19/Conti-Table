//
//  cellGames.m
//  Table-Conti
//
//  Created by Walter Gonzalez Domenzain on 17/04/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "cellGames.h"

@implementation cellGames

- (void)awakeFromNib {
    self.lblLike.layer.borderColor  = [UIColor clearColor].CGColor;
    self.lblLike.layer.borderWidth  = 1.0;
    self.lblLike.clipsToBounds      = YES;
    self.lblLike.layer.cornerRadius = 20;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)btnLikePressed:(id)sender
{
    self.lblLike.backgroundColor = [UIColor blueColor];
}
@end
