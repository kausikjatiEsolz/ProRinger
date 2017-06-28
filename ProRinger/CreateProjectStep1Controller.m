//
//  CreateProjectStep1Controller.m
//  ProRinger
//
//  Created by Kausik_Jati on 15/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "CreateProjectStep1Controller.h"
#import "AppHeader.h"
#import "Json_Class.h"
#import "CreateProjectStep2Controller.h"

@interface CreateProjectStep1Controller ()

@end

@implementation CreateProjectStep1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    url_obj=[Json_Class new];
    AppHeader *header=[AppHeader new];

   // _api_ary=[[NSMutableArray alloc]init];
    [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:@"" Footer:NO];
    
    [self urlData];
    
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
    return _api_ary.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CELL=[projectstep1_table dequeueReusableCellWithIdentifier:@"projectstep1"forIndexPath:indexPath];
    
    CELL.selectionStyle=UITableViewCellSelectionStyleNone;
    
    CELL.label.text=[[_api_ary objectAtIndex:indexPath.row]valueForKey:@"category_name"];
    
    
    return CELL;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    
    
    CreateProjectStep2Controller *obj = [self.storyboard instantiateViewControllerWithIdentifier:@"step2"];
    
    NSString *str=[[_api_ary objectAtIndex:indexPath.row]valueForKey:@"category_name"];
    
    obj.header_str=str;
    
    obj.id_str= [[_api_ary objectAtIndex:indexPath.row]valueForKey:@"id"];
    
    [self.navigationController pushViewController:obj animated:YES];
    
    
    
}



-(void)urlData
{
    NSString *url_str=[NSString stringWithFormat:@"%@app_categorylist?",App_Domain_Url];
    
   NSMutableURLRequest *request=[[NSMutableURLRequest alloc]init];
    
    [request setURL:[NSURL URLWithString:url_str]];
    
    [url_obj GlobalDict:request Globalstr:@"array" lodaer:YES Withblock:^(id result, NSError *error)
     {

         NSString *response=[NSString stringWithFormat:@"%@",[result valueForKey:@"response"]];

         if ([response isEqualToString:@"1"]) {
         
             //NSLog(@"%@",result);
             _api_ary=[result valueForKey:@"info_array"];
            NSLog(@"%@",_api_ary);
             [projectstep1_table reloadData];
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
