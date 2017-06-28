//
//  CreateProjectStep3Controller.h
//  ProRinger
//
//  Created by Kausik_Jati on 15/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateProjectStep3Cell.h"

@interface CreateProjectStep3Controller : UIViewController
{
    
    __weak IBOutlet UILabel *progress_lbl;
    IBOutlet UITableView *ProjectStep3_table;
    CreateProjectStep3Cell *CELL;
    NSMutableArray *name_ary;
}
@property (strong, nonatomic) IBOutlet UIView *table_headerview;
@property (strong, nonatomic) IBOutlet UILabel *header_label;
@property(strong,nonatomic)NSString *header_str;
@end
