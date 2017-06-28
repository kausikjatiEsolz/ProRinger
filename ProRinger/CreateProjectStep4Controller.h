//
//  CreateProjectStep4Controller.h
//  ProRinger
//
//  Created by Kausik_Jati on 16/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateProjectStep4Cell.h"
#import "Json_Class.h"

@interface CreateProjectStep4Controller : UIViewController
{
    IBOutlet UITableView *projectStep4_table;
    CreateProjectStep4Cell *CELL;
    Json_Class *url_obj;
    NSMutableArray *api_ary;
    NSString *string;
    
    __weak IBOutlet UILabel *progress_lbl;
}
@property (strong, nonatomic) IBOutlet UIView *table_headerview;
@property (strong, nonatomic) IBOutlet UILabel *header_lbl;
@property(strong,nonatomic)NSString *header_str;
@end
