//
//  MessagesController.h
//  ProRinger
//
//  Created by Kausik_Jati on 13/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MessagesCell.h"
@interface MessagesController : UIViewController
{
    IBOutlet UITableView *messages_tbl;
    MessagesCell *CELL;
    NSMutableArray *test_ary;
}

@end
