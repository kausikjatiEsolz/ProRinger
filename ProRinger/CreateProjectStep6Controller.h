//
//  CreateProjectStep6Controller.h
//  ProRinger
//
//  Created by Kausik_Jati on 16/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateProjectStep6Cell.h"
#import "Json_Class.h"

@interface CreateProjectStep6Controller : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    IBOutlet UITableView *projectstep6_table;
    CreateProjectStep6Cell *CELL;
    Json_Class *url_obj;
    NSMutableArray *api_ary;
    __weak IBOutlet UILabel *progress_lbl;
}
@property (strong, nonatomic) IBOutlet UIView *table_headerview;
@property (strong, nonatomic) IBOutlet UILabel *header_label;
@property(strong,nonatomic)NSString *header_str;
@end
