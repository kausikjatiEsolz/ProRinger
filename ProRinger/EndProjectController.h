//
//  EndProjectController.h
//  ProRinger
//
//  Created by Kausik_Jati on 27/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EndProjectController : UIViewController
{
    IBOutlet UILabel *header_label;
    
}
@property(strong,nonatomic)NSString *headerlabel_str;
@property (strong,nonatomic)NSString *header_str;
- (IBAction)close_tap:(id)sender;

@end
