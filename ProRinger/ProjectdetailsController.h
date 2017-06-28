//
//  ProjectdetailsController.h
//  ProRinger
//
//  Created by Kausik Jati on 21/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProjectdetailsController : UIViewController
{
    __weak IBOutlet UILabel *progress_lbl;
    IBOutlet UILabel *header_label;
}

@property(strong,nonatomic)NSString *headerlabel_str;
@property (strong,nonatomic)NSString *header_str;
- (IBAction)continueTap:(UIButton *)sender;

@end
