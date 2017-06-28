//
//  NotificationController.h
//  ProRinger
//
//  Created by Kausik Jati on 12/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    __weak IBOutlet UITableView *notificationTable;
    IBOutlet UIView *Header_view;    
    IBOutlet UILabel *header_lable;
    IBOutlet UIView *header_view0;
}

@end
