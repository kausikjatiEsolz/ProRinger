//
//  LoginViewController.m
//  ProRinger
//
//  Created by Kausik_Jati on 10/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "LoginViewController.h"
#import "AppHeader.h"
#import "DashboardController.h"
#import "YXSpritesLoadingView.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    url_obj=[Json_Class new];
  AppHeader  *header = [AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load :self HeaderLeftBtn:@"back" HeaderRightBtn:@"" HeaderText:@"LogIn" Footer:NO];
    
    
    
    NSLog(@"header--->%f",header.frame.size.height);
    
    [self shadow:email_textfield];
    [self shadow:password_textfield];
    
    [self padding:email_textfield];
    [self padding:password_textfield];
    
    email_textfield.autocorrectionType=UITextAutocorrectionTypeNo;
}

-(void)shadow:(UIView *)subview
{
    UIColor *color = [UIColor blackColor];
    subview.layer.shadowColor = [color CGColor];
    subview.layer.shadowRadius = 1.5f;
    subview.layer.shadowOpacity = 0.2;
    subview.layer.shadowOffset = CGSizeZero;
    subview.layer.masksToBounds = NO;
}


-(void)padding:(UITextField *)textfield
{
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(30, 0, 10, 20)];
    textfield.leftView = paddingView;
    textfield.leftViewMode = UITextFieldViewModeAlways;
}


-(void)textFieldDidBeginEditing:(UITextField *)textField{
    textField.layer.borderColor = [[UIColor colorWithRed:241/255.0 green:89/255.0 blue:42/255.0 alpha:1]CGColor];
    
    textField.layer.borderWidth=1.5f;
    
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    textField.layer.borderColor = [[UIColor clearColor]CGColor];
    textField.layer.borderWidth=1.5f;
    
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
-(BOOL)Emailtest:(NSString *)Email
{
    
    NSString *emailRegex = @"^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-+]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z‌​]{2,4})$";
    
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    NSRange aRange;
    
    if([emailTest evaluateWithObject:Email]) {
        
        aRange = [Email rangeOfString:@"." options:NSBackwardsSearch range:NSMakeRange(0, [Email length])];
        
        NSInteger indexOfDot = aRange.location;
        
        //NSLog(@"aRange.location:%d - %d",aRange.location, indexOfDot);
        
        if(aRange.location != NSNotFound) {
            
            NSString *topLevelDomain = [Email substringFromIndex:indexOfDot];
            
            topLevelDomain = [topLevelDomain lowercaseString];
            
            //NSLog(@"topleveldomains:%@",topLevelDomain);
            
            NSSet *TLD;
            
            TLD = [NSSet setWithObjects:@".aero", @".asia", @".biz", @".cat", @".com", @".coop", @".edu", @".gov", @".info", @".int", @".jobs", @".mil", @".mobi", @".museum", @".name", @".net", @".org", @".pro", @".tel", @".travel", @".ac", @".ad", @".ae", @".af", @".ag", @".ai", @".al", @".am", @".an", @".ao", @".aq", @".ar", @".as", @".at", @".au", @".aw", @".ax", @".az", @".ba", @".bb", @".bd", @".be", @".bf", @".bg", @".bh", @".bi", @".bj", @".bm", @".bn", @".bo", @".br", @".bs", @".bt", @".bv", @".bw", @".by", @".bz", @".ca", @".cc", @".cd", @".cf", @".cg", @".ch", @".ci", @".ck", @".cl", @".cm", @".cn", @".co", @".cr", @".cu", @".cv", @".cx", @".cy", @".cz", @".de", @".dj", @".dk", @".dm", @".do", @".dz", @".ec", @".ee", @".eg", @".er", @".es", @".et", @".eu", @".fi", @".fj", @".fk", @".fm", @".fo", @".fr", @".ga", @".gb", @".gd", @".ge", @".gf", @".gg", @".gh", @".gi", @".gl", @".gm", @".gn", @".gp", @".gq", @".gr", @".gs", @".gt", @".gu", @".gw", @".gy", @".hk", @".hm", @".hn", @".hr", @".ht", @".hu", @".id", @".ie", @" No", @".il", @".im", @".in", @".io", @".iq", @".ir", @".is", @".it", @".je", @".jm", @".jo", @".jp", @".ke", @".kg", @".kh", @".ki", @".km", @".kn", @".kp", @".kr", @".kw", @".ky", @".kz", @".la", @".lb", @".lc", @".li", @".lk", @".lr", @".ls", @".lt", @".lu", @".lv", @".ly", @".ma", @".mc", @".md", @".me", @".mg", @".mh", @".mk", @".ml", @".mm", @".mn", @".mo", @".mp", @".mq", @".mr", @".ms", @".mt", @".mu", @".mv", @".mw", @".mx", @".my", @".mz", @".na", @".nc", @".ne", @".nf", @".ng", @".ni", @".nl", @".no", @".np", @".nr", @".nu", @".nz", @".om", @".pa", @".pe", @".pf", @".pg", @".ph", @".pk", @".pl", @".pm", @".pn", @".pr", @".ps", @".pt", @".pw", @".py", @".qa", @".re", @".ro", @".rs", @".ru", @".rw", @".sa", @".sb", @".sc", @".sd", @".se", @".sg", @".sh", @".si", @".sj", @".sk", @".sl", @".sm", @".sn", @".so", @".sr", @".st", @".su", @".sv", @".sy", @".sz", @".tc", @".td", @".tf", @".tg", @".th", @".tj", @".tk", @".tl", @".tm", @".tn", @".to", @".tp", @".tr", @".tt", @".tv", @".tw", @".tz", @".ua", @".ug", @".uk", @".us", @".uy", @".uz", @".va", @".vc", @".ve", @".vg", @".vi", @".vn", @".vu", @".wf", @".ws", @".ye", @".yt", @".za", @".zm", @".zw", nil];
            
            if(topLevelDomain != nil && ([TLD containsObject:topLevelDomain])) {
                
                //NSLog(@"TLD contains topLevelDomain:%@",topLevelDomain);
                
                return false;
                
            }
            
            /*else {
             
             NSLog(@"TLD DOEST NOT contains topLevelDomain:%@",topLevelDomain);
             
             }*/
            
        }
    }
    return true;
}


-(NSString *)TarminateWhiteSpace:(NSString *)Str
{
    NSCharacterSet *whitespace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmed = [Str stringByTrimmingCharactersInSet:whitespace];
    return trimmed;
}

- (IBAction)login_tap:(id)sender {
    
    if ([self Emailtest:email_textfield.text]==true)
    {
        email_textfield.text=@"";
        email_textfield.placeholder = @"Please enter Valid Email Id";
    }
    
    else if ([self TarminateWhiteSpace:password_textfield.text].length<6)
    {
        password_textfield.text=@"";
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"Alert"
                                     message:@"Please Enter Minimum of 6 charecter Password"
                                     preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* ok_btn = [UIAlertAction
                                 actionWithTitle:@"OK"
                                 style:UIAlertActionStyleDefault
                                 handler:nil];
        
        [alert addAction:ok_btn];
        
        [self presentViewController:alert animated:YES completion:nil];
    }
    else
    {
//        DashboardController *dashboard = [self.storyboard instantiateViewControllerWithIdentifier:@"dashboard"];
//        
//        [self.navigationController pushViewController:dashboard animated:YES];
        
        [self urlData];
    }
    
}

-(void)urlData
    {
        [email_textfield resignFirstResponder];
        [password_textfield resignFirstResponder];
        
        NSString *url_str=[NSString stringWithFormat:@"%@app_control/user_login",App_Domain_Url];
        NSString *postdata=[NSString stringWithFormat:@"email=%@&password=%@&device_type=i",email_textfield.text,password_textfield.text];
        
        postdata=[postdata stringByRemovingPercentEncoding];
        
        NSMutableURLRequest *request=[[NSMutableURLRequest alloc]init];
        
        [request setURL:[NSURL URLWithString:url_str]];
        
        [request setHTTPMethod:@"POST"];
        
        
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        
        [request setHTTPBody:[postdata dataUsingEncoding:NSUTF8StringEncoding]];
        
        
        
        [url_obj GlobalDict:request Globalstr:@"array" lodaer:YES Withblock:^(id result, NSError *error) {
            
            
            
            
            NSString *response = [NSString stringWithFormat:@"%@",[result valueForKey:@"response"]];
            
            
            NSLog(@"%@",result);
            
            if ([response isEqualToString:@"1"])
            {
                NSDictionary *useinfo = [result valueForKey:@"info_array"];
                
                NSLog(@"%@",[result valueForKey:@"info_array"]);
                
                [[NSUserDefaults standardUserDefaults]setValue:[NSString stringWithFormat:@"%@",[[result valueForKey:@"info_array"] valueForKey:@"user_id"]] forKey:@"userid"];
                
                
                [[NSUserDefaults standardUserDefaults]setObject:useinfo forKey:@"userinfo"];
                
                
                DashboardController *dashboard = [self.storyboard instantiateViewControllerWithIdentifier:@"dashboard"];
                
                [self.navigationController pushViewController:dashboard animated:YES];
            }
            
            else
            {
               
            }
        }];
    }


@end
