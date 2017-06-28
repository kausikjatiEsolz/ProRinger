//
//  CreateProjectStep1Controller.h
//  ProRinger
//
//  Created by Kausik_Jati on 15/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateProjectStep1Cell.h"
#import "Json_Class.h"

@interface CreateProjectStep1Controller : UIViewController
{
    CreateProjectStep1Cell *CELL;
    IBOutlet UITableView *projectstep1_table;
    Json_Class *url_obj;
    
}
@property (strong, nonatomic) IBOutlet UIView *table_headerview;
@property (strong, nonatomic) IBOutlet UILabel *tableheader_lbl;
@property (strong,nonatomic)NSMutableArray *api_ary;
@end
