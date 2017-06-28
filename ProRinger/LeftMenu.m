//
//  LeftMenu.m
//  ProRinger
//
//  Created by Kausik Jati on 10/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "LeftMenu.h"

@implementation LeftMenu
@synthesize side_menuDelegate;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame
{
    
    
    self=[super initWithFrame:frame];
    
    if (self)
    {
        self=[[[NSBundle mainBundle] loadNibNamed:@"LeftMenu" owner:self options:nil]objectAtIndex:0];
    }
    
    
    table_array = [[NSArray alloc]initWithObjects:@"User Information",@"Login Settings",@"Notifications",@"Home Scheduler",@"Invite A Friend",@"Log Out", nil];
    
    self.leftMenuTable.dataSource= self;
    self.leftMenuTable.delegate =self;
    
    return self;
    
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID=@"CellID";
    
    UITableViewCell *myCell=[tableView dequeueReusableCellWithIdentifier:cellID];
    
    if(myCell==nil)
    {
        
        myCell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
    }
    
    
    //NSLog(@"business-->%@",business);
    
    
    return myCell;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)myCell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    for (id obj  in myCell.subviews)
    {
        [obj removeFromSuperview];
    }
    
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(20, 0, tableView.frame.size.width-60, tableView.frame.size.height/10)];
    
    lable.text = [table_array objectAtIndex:indexPath.row];
    myCell.backgroundColor = tableHeader1.backgroundColor;
    lable.textColor = [UIColor whiteColor];
    lable.font = [UIFont fontWithName:@"OpenSans-Regular" size:16];
    
    [myCell addSubview:lable];
    
    
    myCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor colorWithRed:(101/255.0) green:(101/255.0) blue:(101/255.0) alpha:1.0];
    [myCell setSelectedBackgroundView:bgColorView];
    
    
    
    
    
    
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==1)
    {
        return table_array.count;
    }
    else
    {
        return 0;
    }
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return tableView.frame.size.height/10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return tableView.frame.size.height/10;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
        [side_menuDelegate left_menu:(int)indexPath.row+2];
        
    
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section==0)
    {
        return tableHeader0;
    }
    else if (section==1)
    {
        return tableHeader1;
    }
    else if (section==2)
    {
        return tableHeader2;
    }
    else if (section==3)
    {
        return tableHeader3;
    }
    
    return nil;
}


- (IBAction)header_btnTap:(UIButton *)sender {
    
     [side_menuDelegate left_menu:(int)sender.tag];
}
@end
