//
//  CreateProjectStep5Controller.h
//  ProRinger
//
//  Created by Kausik_Jati on 16/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateProjectStep5Cell.h"

@interface CreateProjectStep5Controller : UIViewController
{
    IBOutlet UITableView *projectStep5_table;
    CreateProjectStep5Cell *CELL;
    NSMutableArray *name_ary;
    __weak IBOutlet UILabel *progress_lbl;
    
}
@property (strong, nonatomic) IBOutlet UIView *table_headerview;
@property (strong, nonatomic) IBOutlet UILabel *header_label;
@property(strong,nonatomic)NSString *header_str;
@end
