//
//  EndProjectController.m
//  ProRinger
//
//  Created by Kausik_Jati on 27/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "EndProjectController.h"
#import "AppHeader.h"
#import "DashboardController.h"

@interface EndProjectController ()

@end

@implementation EndProjectController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppHeader *header=[AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"" HeaderRightBtn:@"home" HeaderText:_header_str Footer:NO];
    
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

- (IBAction)close_tap:(id)sender {
    
   // [self.navigationController popToRootViewControllerAnimated:NO];
    
    
    DashboardController *dashboard = [self.storyboard instantiateViewControllerWithIdentifier:@"dashboard"];
    
    [self.navigationController pushViewController:dashboard animated:NO];
    
    
}
@end
