//
//  SearchLocalProsController.h
//  ProRinger
//
//  Created by Kausik_Jati on 12/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchLocalProsCell.h"
@interface SearchLocalProsController : UIViewController
{
    SearchLocalProsCell *CELL;
    IBOutlet UITableView *searchlocalpros_tbl;
}
@property (strong, nonatomic) IBOutlet UIView *headerview;
@end
