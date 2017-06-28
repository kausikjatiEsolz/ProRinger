//
//  NotificationController.m
//  ProRinger
//
//  Created by Kausik Jati on 12/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "NotificationController.h"
#import "NotificationCell.h"
#import "AppHeader.h"

@interface NotificationController ()
{
    NSMutableArray *selected_index;
}

@end

@implementation NotificationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   AppHeader *header = [AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load :self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:@"Notifications" Footer:NO];
    
    selected_index = [NSMutableArray new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma tableview Method

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NotificationCell *noticell = [tableView dequeueReusableCellWithIdentifier:@"noticell"];
    
    noticell.backgroundColor = [UIColor clearColor];
    
    if ([selected_index containsObject:indexPath])
    {
        noticell.onoff_image.image = [UIImage imageNamed:@"icon9"];
    }
    else
    {
         noticell.onoff_image.image = [UIImage imageNamed:@"icon10"];
    }
    
    noticell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return noticell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section==0)
    {
        return header_view0;
    }
    else
    {
        return Header_view;
    }
    
    return nil;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 58;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return Header_view.frame.size.height;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if ([selected_index containsObject:indexPath])
    {
        [selected_index removeObject:indexPath];
    }
    else
    {
        [selected_index addObject:indexPath];
    }
    
    [tableView beginUpdates];
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    [tableView endUpdates];
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
