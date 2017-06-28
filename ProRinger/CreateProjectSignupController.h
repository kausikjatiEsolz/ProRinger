//
//  CreateProjectSignupController.h
//  ProRinger
//
//  Created by Kausik Jati on 21/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Json_Class.h"

@interface CreateProjectSignupController : UIViewController
{
    __weak IBOutlet UIScrollView *scroll;
    __weak IBOutlet UILabel *progress_lbl;
    IBOutlet UILabel *header_label;
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
@property(strong,nonatomic)NSString *headerlabel_str;
@property (strong,nonatomic)NSString *header_str;
- (IBAction)continue_tap:(id)sender;

@end
