//
//  DashboardController.m
//  ProRinger
//
//  Created by Kausik Jati on 12/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "DashboardController.h"
#import "AppHeader.h"
#import "DashboardCell.h"

@interface DashboardController ()
{
    NSArray *dashboard_data;
}

@end

@implementation DashboardController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    AppHeader *header = [AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load :self HeaderLeftBtn:@"menu" HeaderRightBtn:@"search" HeaderText:@"" Footer:YES];
    
    
    
    dashboard_data = [[NSArray alloc]initWithObjects:@"User Information",@"Login Settings",@"Notifications",@"Home Scheduler",@"Invite A Friend", nil];
    
    
    for (UIView *subview in header_view.subviews)
    {
        if (![subview isKindOfClass:[UILabel class]])
        {
    
        UIColor *color = [UIColor blackColor];
        subview.layer.shadowColor = [color CGColor];
        subview.layer.shadowRadius = 1.5f;
        subview.layer.shadowOpacity = 0.2;
        subview.layer.shadowOffset = CGSizeZero;
        subview.layer.masksToBounds = NO;
        
    }
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma Table view Method


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DashboardCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dascell"];
    
    cell.name_lbl.text = [dashboard_data objectAtIndex:indexPath.row];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return dashboard_data.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return header_view;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 65;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return header_view.frame.size.height;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
