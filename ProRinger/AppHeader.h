//
//  AppHeader.h
//  ProRinger
//
//  Created by Kausik Jati on 10/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftMenu.h"
#import "Footer.h"

@interface AppHeader : UIView<sideMenuDelegate,footerDeleget>

@property (strong, nonatomic) IBOutlet UIImageView *header_image;

@property (strong, nonatomic) IBOutlet UILabel *header_lable;
@property (strong, nonatomic) IBOutlet UIButton *Menu_backBtn;

@property(weak,nonatomic) UIViewController *viewController_global;
@property(strong,nonatomic)LeftMenu *leftmenuObj;
@property(strong,nonatomic)Footer *footerObj;


-(void)Appheader_sideMenu_Footer_Load:(UIViewController *)viewController HeaderLeftBtn:(NSString *)menu_back HeaderRightBtn:(NSString *)search_home HeaderText:(NSString *)headertext Footer:(BOOL)yes_no;

- (IBAction)Menu_Back:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *header_rightBtn;
- (IBAction)headerRight:(UIButton *)sender;

@end
