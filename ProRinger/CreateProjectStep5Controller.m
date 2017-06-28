//
//  CreateProjectStep5Controller.m
//  ProRinger
//
//  Created by Kausik_Jati on 16/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "CreateProjectStep5Controller.h"
#import "AppHeader.h"
#import "CreateProjectStep6Controller.h"

@interface CreateProjectStep5Controller ()

@end

@implementation CreateProjectStep5Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppHeader *header=[AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:_header_str Footer:NO];
    
    name_ary=[[NSMutableArray alloc]initWithObjects:@"Ready to hire",@"Planning and Budgeting", nil];
    
    
     progress_lbl.frame = CGRectMake(0, progress_lbl.frame.origin.y, self.view.frame.size.width/7, 2);
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return _table_headerview.frame.size.height;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    return _table_headerview;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return name_ary.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CELL=[projectStep5_table dequeueReusableCellWithIdentifier:@"projectstep5"forIndexPath:indexPath];
    
    CELL.selectionStyle=UITableViewCellSelectionStyleNone;
    
    CELL.label.text=[name_ary objectAtIndex:indexPath.row];
    
    return CELL;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    
    
    CreateProjectStep5Controller *obj = [self.storyboard instantiateViewControllerWithIdentifier:@"step6"];
    
    obj.header_str=_header_str;
    
    
    obj.header_label.text=_header_label.text;
    
    [self.navigationController pushViewController:obj animated:YES];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
