//
//  MessageDetailsController.h
//  ProRinger
//
//  Created by Kausik Jati on 13/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageDetailsController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    __weak IBOutlet UITableView *chatTable;
    
}


@end
