//
//  UserInformationController.h
//  ProRinger
//
//  Created by Kausik_Jati on 27/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserInformationController : UIViewController
{
    IBOutlet UITextField *firstname_textfield;
    IBOutlet UITextField *lastname_textfield;
    IBOutlet UITextField *phonenumber_textfield;
    IBOutlet UITextField *zipcode_textfield;
    IBOutlet UITextField *city_textfield;
    IBOutlet UITextField *address_textfield;
    IBOutlet UITextField *state_textfield;
    IBOutlet UIScrollView *userinfo_scroll;
    
}
@end
