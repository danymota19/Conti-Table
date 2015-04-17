//
//  ViewController.m
//  Table-Conti
//
//  Created by Walter Gonzalez Domenzain on 17/04/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Table01.h"
#import "cellGames.h"

NSMutableArray *aNames;
NSMutableArray *aInfo;
NSMutableArray *aImages;

@interface Table01 ()

@end

@implementation Table01
//-----------------------------------------
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-----------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-----------------------------------------
- (void)initController
{
    aNames  = [NSMutableArray arrayWithObjects: @"Ned Stark", @"Jofrey Lannister",@"Kalissi",@"Khal Drogo",@"John Snow",nil];
    
    aInfo   = [NSMutableArray arrayWithObjects: @"Winterfell", @"Casa Lannister",@"Madre de Dragones",@"Darkirians",@"Winterfell",nil];
    
    aImages = [NSMutableArray arrayWithObjects: @"edna.png", @"lisa.png", @"marge.png", @"maude.png", @"patty.png",nil];
}
//-----------------------------------------
//Table functions
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellGames");
    static NSString *CellIdentifier = @"cellGames";
    
    cellGames *cell = (cellGames *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[cellGames alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblName.text   = aNames[indexPath.row];
    cell.lblInfo.text   = aInfo[indexPath.row];
    cell.imgUser.image  = [UIImage imageNamed:aImages[indexPath.row]];
    
    return cell;
}



















@end
