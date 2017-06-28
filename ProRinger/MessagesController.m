//
//  MessagesController.m
//  ProRinger
//
//  Created by Kausik_Jati on 13/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "MessagesController.h"
#import "AppHeader.h"
#import "CompanyMsgController.h"
@interface MessagesController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation MessagesController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppHeader  *header = [AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:@"" Footer:NO];
    
    test_ary=[[NSMutableArray alloc]initWithObjects:@"Plumbing Project",@"Landscaping Project",@"Home Inspection Project",@"Realtor Project",@"Roofing Project",@"Flooring Project", nil];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return test_ary.count;
}




-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CELL=[messages_tbl dequeueReusableCellWithIdentifier:@"messages"forIndexPath:indexPath];
    CELL.name_lbl=[test_ary objectAtIndex:indexPath.row];
    CELL.selectionStyle=UITableViewCellSelectionStyleNone;
    
    return CELL;
}


-(NSArray *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewRowAction *deleteAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:@"          "  handler:^(UITableViewRowAction *action, NSIndexPath *indexPath){
        
        
        
        UIAlertController *deleteAlert = [UIAlertController alertControllerWithTitle:@"Delete?" message:@"Are you sure you want to delete this?" preferredStyle:UIAlertControllerStyleActionSheet];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * alert_action){
            
            
            [tableView beginUpdates];
            
            [messages_tbl deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            
            [test_ary removeObjectAtIndex:indexPath.row];
            
            
            [tableView endUpdates];
            
            
            if (test_ary == nil || [test_ary count] == 0) {
                UILabel *label =  [[UILabel alloc] initWithFrame: CGRectMake(0, 0, 145, 200)];
                label.text = @"No Message Found";
                label.center = self.view.center;
                [self.view addSubview:label];
            }
            
            
        }];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
            
        }];
        
        [deleteAlert addAction:okAction];
        [deleteAlert addAction:cancelAction];
        [self presentViewController:deleteAlert animated:YES completion:nil];
    }];
    
    UITableViewCell *commentCell = (UITableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    
    CGFloat height = commentCell.frame.size.height;
    
    UIImage *backgroundImage = [self deleteImageForHeight:height];
   
    
    deleteAction.backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    
    return @[deleteAction];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CompanyMsgController *obj = [self.storyboard instantiateViewControllerWithIdentifier:@"cmsg"];
    [self.navigationController pushViewController:obj animated:YES];
}


- (UIImage*)deleteImageForHeight:(CGFloat)height{
    
    CGRect frame = CGRectMake(0, 0, 62, height);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(62, height), NO, [UIScreen mainScreen].scale);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [UIColor colorWithRed:255/255.0 green:0/255.0 blue:42/255 alpha:1].CGColor);
    CGContextFillRect(context, frame);
    
    UIImage *image = [UIImage imageNamed:@"cross"];
    
    [image drawInRect:CGRectMake(frame.size.width/2.0 - 5, frame.size.height/2.0 - 20, 30,30)];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return newImage;
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
