//
//  CreateProjectStep4Controller.m
//  ProRinger
//
//  Created by Kausik_Jati on 16/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "CreateProjectStep4Controller.h"
#import "AppHeader.h"
#import "CreateProjectStep5Controller.h"

@interface CreateProjectStep4Controller ()

@end

@implementation CreateProjectStep4Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //api_ary=[[NSMutableArray alloc]init];
    
    url_obj=[Json_Class new];
    
    AppHeader *header=[AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:_header_str Footer:NO];
    
    [self urlData];
    
     progress_lbl.frame = CGRectMake(0, progress_lbl.frame.origin.y, self.view.frame.size.width/8, 2);
    
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
    CELL=[projectStep4_table dequeueReusableCellWithIdentifier:@"projectstep4"forIndexPath:indexPath];
    
    CELL.selectionStyle=UITableViewCellSelectionStyleNone;
    
    CELL.label.text=[[api_ary objectAtIndex:indexPath.row]valueForKey:@"property_list"];
    
    return CELL;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    
    
    CreateProjectStep5Controller *obj = [self.storyboard instantiateViewControllerWithIdentifier:@"step5"];
    
    obj.header_str=_header_str;
    
    obj.header_label.text=_header_lbl.text;
    
    [self.navigationController pushViewController:obj animated:YES];
    
    
}


-(void)urlData
{
    NSString *url_str=[NSString stringWithFormat:@"%@app_categoryproperty_list?",App_Domain_Url];
    
    NSMutableURLRequest *request=[[NSMutableURLRequest alloc]init];
    
    [request setURL:[NSURL URLWithString:url_str]];
    
    [url_obj GlobalDict:request Globalstr:@"array" lodaer:YES Withblock:^(id result, NSError *error)
     {
         
         // NSLog(@"%@",result);
         
         
         NSString *response=[NSString stringWithFormat:@"%@",[result valueForKey:@"response"]];
         
         if ([response isEqualToString:@"1"]) {
             
         
            api_ary=[result valueForKey:@"info_array"];
             [projectStep4_table reloadData];
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
