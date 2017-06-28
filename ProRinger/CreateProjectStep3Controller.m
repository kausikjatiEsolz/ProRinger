//
//  CreateProjectStep3Controller.m
//  ProRinger
//
//  Created by Kausik_Jati on 15/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "CreateProjectStep3Controller.h"
#import "AppHeader.h"
#import "CreateProjectStep4Controller.h"


@interface CreateProjectStep3Controller ()

@end

@implementation CreateProjectStep3Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    AppHeader *header=[AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:_header_str Footer:NO];
    
    
    name_ary=[[NSMutableArray alloc]initWithObjects:@"Repair",@"Installation",@"Others", nil];
    
     progress_lbl.frame = CGRectMake(0, progress_lbl.frame.origin.y, self.view.frame.size.width/9, 2);
    // Do any additional setup after loading the view.
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
    CELL=[ProjectStep3_table dequeueReusableCellWithIdentifier:@"projectstep3"forIndexPath:indexPath];
    
    CELL.selectionStyle=UITableViewCellSelectionStyleNone;
    
    CELL.label.text=[name_ary objectAtIndex:indexPath.row];
    
    return CELL;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    
    
    CreateProjectStep4Controller *obj = [self.storyboard instantiateViewControllerWithIdentifier:@"step4"];
    
    obj.header_str=_header_str;
    
    obj.header_lbl.text=_header_label.text;
    
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
