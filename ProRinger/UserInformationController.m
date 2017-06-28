//
//  UserInformationController.m
//  ProRinger
//
//  Created by Kausik_Jati on 27/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "UserInformationController.h"
#import "AppHeader.h"

@interface UserInformationController ()

@end

@implementation UserInformationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppHeader  *header = [AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:@"Account Settings" Footer:YES];
    
    
    for (UITextField *text in userinfo_scroll.subviews)
    {
        if ([text isKindOfClass:[UITextField class]])
        {
            [self padding:text];
            [self shadow:text];
        }
    }
    
    
    userinfo_scroll.contentSize = CGSizeMake(0,userinfo_scroll.frame.origin.y+userinfo_scroll.frame.size.height);
    
}

-(void)padding:(UITextField *)textfield
{
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(30, 0, 10, 20)];
    textfield.leftView = paddingView;
    textfield.leftViewMode = UITextFieldViewModeAlways;
    
    textfield.backgroundColor = [UIColor whiteColor];
    
    
    textfield.layer.masksToBounds = NO;
    textfield.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    textfield.layer.shadowRadius = 1;
    textfield.layer.shadowOpacity = 0.2;
    textfield.layer.shadowColor = [[UIColor darkGrayColor] CGColor];
    
}

-(void)shadow:(UITextField *)textfield
{
    UIColor *color = [UIColor blackColor];
    textfield.layer.shadowColor = [color CGColor];
    textfield.layer.shadowRadius = 1.5f;
    textfield.layer.shadowOpacity = 0.2;
    textfield.layer.shadowOffset = CGSizeZero;
    textfield.layer.masksToBounds = NO;
}


-(void)textFieldDidBeginEditing:(UITextField *)textField{
    textField.layer.borderColor = [[UIColor colorWithRed:241/255.0 green:89/255.0 blue:42/255.0 alpha:1]CGColor];
    
    textField.layer.borderWidth=1.5f;
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    textField.layer.borderColor = [[UIColor clearColor]CGColor];
    textField.layer.borderWidth=1.5f;
    
    userinfo_scroll.contentSize = CGSizeMake(0,userinfo_scroll.frame.origin.y+userinfo_scroll.frame.size.height);
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return true;
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
