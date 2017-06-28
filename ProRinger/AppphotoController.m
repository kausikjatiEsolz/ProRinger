//
//  AppphotoController.m
//  ProRinger
//
//  Created by Kausik Jati on 21/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "AppphotoController.h"
#import "AppHeader.h"
#import "ProjectdetailsController.h"

@interface AppphotoController ()

@end

@implementation AppphotoController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppHeader *header=[AppHeader new];
    [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:_header_str Footer:NO];
    
      progress_lbl.frame = CGRectMake(0, progress_lbl.frame.origin.y, self.view.frame.size.width/5, 1);
    
    progress_lbl.frame = CGRectMake(0, progress_lbl.frame.origin.y, self.view.frame.size.width/5, 2);
    
    header_label.text=_headerlabel_str;
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

- (IBAction)continue_tap:(UIButton *)sender {
    
    ProjectdetailsController *obj = [self.storyboard instantiateViewControllerWithIdentifier:@"details"];
    
    obj.header_str=_header_str;
    
    obj.headerlabel_str=header_label.text;
    
    [self.navigationController pushViewController:obj animated:YES];
    
}
@end