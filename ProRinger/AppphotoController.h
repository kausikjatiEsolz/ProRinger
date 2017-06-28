//
//  AppphotoController.h
//  ProRinger
//
//  Created by Kausik Jati on 21/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppphotoController : UIViewController
{
    __weak IBOutlet UILabel *progress_lbl;
    IBOutlet UILabel *header_label;
}
- (IBAction)continue_tap:(UIButton *)sender;


@property (strong,nonatomic)NSString *header_str;
@property(strong,nonatomic)NSString *headerlabel_str;




@end
