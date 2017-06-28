//
//  CreateProjectStep2Controller.m
//  ProRinger
//
//  Created by Kausik_Jati on 15/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "CreateProjectStep2Controller.h"
#import "AppHeader.h"
#import "CreateProjectStep3Controller.h"
@interface CreateProjectStep2Controller ()

@end

@implementation CreateProjectStep2Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppHeader *header=[AppHeader new];
    url_obj=[Json_Class new];
    
      [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:_header_str Footer:NO];
    
    [self urlData];
    
    progress_lbl.frame = CGRectMake(0, progress_lbl.frame.origin.y, self.view.frame.size.width/10, 2);
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    CELL=[projectstep2_table dequeueReusableCellWithIdentifier:@"projectstep2"forIndexPath:indexPath];
    
    CELL.selectionStyle=UITableViewCellSelectionStyleNone;
    
    CELL.label.text=[[_api_ary objectAtIndex:indexPath.row]valueForKey:@"category_name"];
    
    return CELL;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    
    
    CreateProjectStep3Controller *obj = [self.storyboard instantiateViewControllerWithIdentifier:@"step3"];
    
    NSString *str=[[_api_ary objectAtIndex:indexPath.row]valueForKey:@"category_name"];
    
    obj.header_str=_header_str;
    
    obj.header_label.text=str;
    
    [self.navigationController pushViewController:obj animated:YES];
    
    
}


-(void)urlData
{
    NSString *url_str=[NSString stringWithFormat:@"%@app_catrgoryservice_list?parent_category=%@",App_Domain_Url,_id_str];
    
    NSString *urlUTF8=[url_str stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSMutableURLRequest *request=[[NSMutableURLRequest alloc]init];
    
    [request setURL:[NSURL URLWithString:urlUTF8]];
    
    [url_obj GlobalDict:request Globalstr:@"array" lodaer:YES Withblock:^(id result, NSError *error) {
        
        NSString *response = [NSString stringWithFormat:@"%@",[result valueForKey:@"response"]];
        
        if ([response isEqualToString:@"1"]){
            
            
            _api_ary=[result valueForKey:@"info_array"];
           // NSLog(@"%@",_api_ary);
            [projectstep2_table reloadData];
        }
    }];
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
