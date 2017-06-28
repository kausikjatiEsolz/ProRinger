//
//  LeftMenu.h
//  ProRinger
//
//  Created by Kausik Jati on 10/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol sideMenuDelegate <NSObject>

-(void)left_menu:(int)value;

@end

@interface LeftMenu : UIView<UITableViewDelegate,UITableViewDataSource>
{
    IBOutlet UIView *tableHeader0;
    IBOutlet UIView *tableHeader1;
    IBOutlet UIView *tableHeader2;
    IBOutlet UIView *tableHeader3;
    NSArray *table_array;
    
}
- (IBAction)header_btnTap:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITableView *leftMenuTable;

@property(assign) id <sideMenuDelegate> side_menuDelegate;


@end
