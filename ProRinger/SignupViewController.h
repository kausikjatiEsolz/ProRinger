//
//  SignupViewController.h
//  ProRinger
//
//  Created by Kausik_Jati on 12/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Json_Class.h"

@interface SignupViewController : UIViewController
{
    IBOutlet UITextField *firstname_textfield;
    IBOutlet UITextField *lastname_textfield;
    IBOutlet UITextField *email_textfield;
    IBOutlet UITextField *password_textfield;
    IBOutlet UITextField *confirmpassword_textfield;
    IBOutlet UITextField *zipcode_textfield;
    IBOutlet UIScrollView *signup_scroll;
    CGFloat currentKeyboardHeight;
    Json_Class *url_obj;
    
}
- (IBAction)completeaccount_tap:(id)sender;
@end
