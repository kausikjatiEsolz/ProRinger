//
//  DashboardController.h
//  ProRinger
//
//  Created by Kausik Jati on 12/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    IBOutlet UIView *header_view;
    
    __weak IBOutlet UITableView *table_view;
    
}

@end
