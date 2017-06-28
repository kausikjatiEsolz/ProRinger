//
//  CreateProjectStep6Controller.m
//  ProRinger
//
//  Created by Kausik_Jati on 16/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "CreateProjectStep6Controller.h"
#import "AppHeader.h"
#import "AppphotoController.h"

@interface CreateProjectStep6Controller ()

@end

@implementation CreateProjectStep6Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    url_obj=[Json_Class new];
    AppHeader *header=[AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:_header_str Footer:NO];
    
    [self urlData];
    
     progress_lbl.frame = CGRectMake(0, progress_lbl.frame.origin.y, self.view.frame.size.width/6, 2);
    
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
    return api_ary.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CELL=[projectstep6_table dequeueReusableCellWithIdentifier:@"projectstep6"forIndexPath:indexPath];
    
    CELL.selectionStyle=UITableViewCellSelectionStyleNone;
    
    CELL.label.text=[[api_ary objectAtIndex:indexPath.row] valueForKey:@"project_timeframe"];
    
    return CELL;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    AppphotoController *obj = [self.storyboard instantiateViewControllerWithIdentifier:@"addphoto"];
    
    obj.header_str=_header_str;
    
    
    obj.headerlabel_str=_header_label.text;
    
    [self.navigationController pushViewController:obj animated:YES];

}


-(void)urlData
{
    NSString *url_str=[NSString stringWithFormat:@"%@app_categorytimeframe_list?",App_Domain_Url];
    
    NSMutableURLRequest *request=[[NSMutableURLRequest alloc]init];
    
    [request setURL:[NSURL URLWithString:url_str]];
    
    [url_obj GlobalDict:request Globalstr:@"array" lodaer:YES Withblock:^(id result, NSError *error)
     {
         
        //  NSLog(@"%@",result);
         
         
         NSString *response=[NSString stringWithFormat:@"%@",[result valueForKey:@"response"]];
         
         if ([response isEqualToString:@"1"]) {
             
             
             api_ary=[result valueForKey:@"info_array"];
             [projectstep6_table reloadData];
         }
         
     }];
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
