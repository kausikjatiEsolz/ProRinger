//
//  CreateProjectStep2Controller.h
//  ProRinger
//
//  Created by Kausik_Jati on 15/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateProjectStep2Cell.h"
#import "Json_Class.h"
@interface CreateProjectStep2Controller : UIViewController
{
    IBOutlet UITableView *projectstep2_table;
    CreateProjectStep2Cell *CELL;
    Json_Class *url_obj;
    __weak IBOutlet UILabel *progress_lbl;
}
@property (strong, nonatomic) IBOutlet UIView *table_headerview;
@property(strong,nonatomic)NSMutableArray *api_ary;
@property(strong,nonatomic)NSString *header_str;
@property(strong,nonatomic)NSString *id_str;
@end
