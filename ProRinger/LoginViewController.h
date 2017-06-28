//
//  LoginViewController.h
//  ProRinger
//
//  Created by Kausik_Jati on 10/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Json_Class.h"

@interface LoginViewController : UIViewController
{
    IBOutlet UITextField *email_textfield;
    IBOutlet UITextField *password_textfield;
    Json_Class *url_obj;
    
}
- (IBAction)login_tap:(id)sender;
@end
