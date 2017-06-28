//
//  AppHeader.m
//  ProRinger
//
//  Created by Kausik Jati on 10/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "AppHeader.h"
#import "NotificationController.h"
#import "InitialViewController.h"
#import "CreateProjectImageController.h"
#import "MessagesController.h"
#import "DashboardController.h"

@implementation AppHeader
{
    NSString *menu_backGlobal;
    UIView *back_view;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame
{
    
    
    self=[super initWithFrame:frame];
    
    if (self)
    {
        self=[[[NSBundle mainBundle] loadNibNamed:@"AppHeader" owner:self options:nil]objectAtIndex:0];
    }
    
   
    
    
    return self;
    
    
}


-(void)Appheader_sideMenu_Footer_Load:(UIViewController *)viewController HeaderLeftBtn:(NSString *)menu_back HeaderRightBtn:(NSString *)search_home HeaderText:(NSString *)headertext Footer:(BOOL)yes_no
{
    ///Header Setup
    self.layer.masksToBounds = NO;
    self.layer.shadowOffset = CGSizeMake(1, 1);
    self.layer.shadowRadius = 1;
    self.layer.shadowOpacity = 0.2;
    self.layer.shadowColor = [[UIColor darkGrayColor] CGColor];
    
    self.frame = CGRectMake(0, 0, viewController.view.frame.size.width, self.frame.size.height);
    
    [viewController.view addSubview:self];
    
    
    
    
   
    
    
    
    // Footer Setup
    
    
    if (yes_no)
    {
        
    
    
    self.footerObj = [Footer new];
    
    self.footerObj.frame = CGRectMake(0, viewController.view.frame.size.height-self.footerObj.frame.size.height, viewController.view.frame.size.width, self.footerObj.frame.size.height);
    
        
        self.footerObj.FooterDeleget = self;
    [viewController.view addSubview:self.footerObj];
        
    }
    


    //Left Menu Setup
    
    
    if ([menu_back isEqualToString:@"menu"])
    {
        
        
        back_view = [[UIView alloc]initWithFrame:CGRectMake(0, self.frame.size.height, viewController.view.frame.size.width, viewController.view.frame.size.height-self.frame.size.height-self.footerObj.footer_contentview.frame.size.height)];
        
        back_view.backgroundColor = [UIColor blackColor];
        
        UITapGestureRecognizer *letterTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeMenu)];
        
        [back_view addGestureRecognizer:letterTapRecognizer];
        
        back_view.alpha = 0;
        
        back_view.hidden=YES;
        
        [viewController.view addSubview:back_view];
        
    
    
    self.leftmenuObj = [LeftMenu new];
    
    
    self.leftmenuObj.frame = CGRectMake(-viewController.view.frame.size.width/1.3, self.frame.size.height,viewController.view.frame.size.width/1.3, viewController.view.frame.size.height-self.frame.size.height-self.footerObj.footer_contentview.frame.size.height);
    
    self.leftmenuObj.hidden = YES;
    self.leftmenuObj.side_menuDelegate = self;
    [viewController.view addSubview:self.leftmenuObj];
    
    
    [viewController.view bringSubviewToFront:self.footerObj];
    
    }
    
    else
    {
        [self.Menu_backBtn setImage:[UIImage imageNamed:@"back-1"] forState:UIControlStateNormal];
    }
    
    
    if (headertext.length==0 || headertext==nil)
    {
        self.header_lable.hidden =YES;
        self.header_image.hidden = NO;
    }
    else
    {
        self.header_lable.hidden =NO;
        self.header_lable.text = headertext;
        self.header_image.hidden = YES;
    }
    
    if ([search_home isEqualToString:@"search"])
    {
        [self.header_rightBtn setImage:[UIImage imageNamed:@"icon1"] forState:UIControlStateNormal];
    }
    else if ([search_home isEqualToString:@"home"])
    {
        [self.header_rightBtn setImage:[UIImage imageNamed:@"icon3"] forState:UIControlStateNormal];
    }
    else
    {
        self.header_rightBtn.hidden = YES;
    }
  
    [viewController.view bringSubviewToFront:self];
    self.viewController_global = viewController;
    menu_backGlobal = menu_back;
        
    
    
}

- (IBAction)Menu_Back:(UIButton *)sender {
    
    if ([menu_backGlobal isEqualToString:@"menu"])
    {
        
   
    
    if (self.leftmenuObj.frame.origin.x<0)
    {
        self.leftmenuObj.hidden = NO;
        
        back_view.hidden=NO;
        
        [UIView animateWithDuration:.3f animations:^{
           
            
            back_view.alpha = .5f;
             self.leftmenuObj.frame = CGRectMake(0, self.frame.size.height,self.viewController_global.view.frame.size.width/1.3, self.viewController_global.view.frame.size.height-self.frame.size.height-self.footerObj.footer_contentview.frame.size.height);
            
            
        }];
    }
    
    else
    {
        [UIView animateWithDuration:.3f animations:^{
            
            back_view.alpha = 0;
            
             self.leftmenuObj.frame = CGRectMake(-self.viewController_global.view.frame.size.width/1.3, self.frame.size.height,self.viewController_global.view.frame.size.width/1.3, self.viewController_global.view.frame.size.height-self.frame.size.height-self.footerObj.footer_contentview.frame.size.height);
            
        }completion:^(BOOL finished) {
            
            
            self.leftmenuObj.hidden = YES;
            
            back_view.hidden = YES;
            
            
        }];
    }
    
    }
    
    else
    {
        [self.viewController_global.navigationController popViewControllerAnimated:YES];
    }
    
    
}

-(void)closeMenu
{
    [UIView animateWithDuration:.3f animations:^{
        
        back_view.alpha = 0;
        
        self.leftmenuObj.frame = CGRectMake(-self.viewController_global.view.frame.size.width/1.3, self.frame.size.height,self.viewController_global.view.frame.size.width/1.3, self.viewController_global.view.frame.size.height-self.frame.size.height-self.footerObj.footer_contentview.frame.size.height);
        
    }completion:^(BOOL finished) {
        
        
        self.leftmenuObj.hidden = YES;
        
        back_view.hidden = YES;
        
        
    }];
}


-(void)left_menu:(int)value
{
    NSLog(@"LeftMenu--->%d",value);
    
    [self closeMenu];
    
    if (value==4)
    {
        if (![[_viewController_global.navigationController visibleViewController]isKindOfClass:[NotificationController class]])
        {
            NotificationController *obj = [_viewController_global.storyboard instantiateViewControllerWithIdentifier:@"notification"];
            [_viewController_global.navigationController pushViewController:obj animated:YES];
        }
    }
    else if (value==7)
    {
        {
            
            
            UIAlertController *alertController = [UIAlertController
                                                  alertControllerWithTitle:@"Log Out"
                                                  message:@"Are you sure you want to log out?"
                                                  preferredStyle:UIAlertControllerStyleAlert];
            
            
            
            UIAlertAction *cancelAction = [UIAlertAction
                                           actionWithTitle:@"Cancel"
                                           style:UIAlertActionStyleCancel
                                           handler:^(UIAlertAction *action)
                                           {
                                               
                                           }];
            
            UIAlertAction *okAction = [UIAlertAction
                                       actionWithTitle:@"LogOut"
                                       style:UIAlertActionStyleDestructive
                                       handler:^(UIAlertAction *action)
                                       {
                                           
                                           [alertController dismissViewControllerAnimated:NO completion:nil];
                                           
                                           NSLog(@"navigation1st--->%@",_viewController_global.navigationController.viewControllers);
                                           
                                           
                                           [[NSUserDefaults standardUserDefaults] setValue:@"" forKey:@"userid"];
                                           
                                           InitialViewController *obj_sigup;
                                           
                                           for (UIViewController *obj in _viewController_global.navigationController.viewControllers.reverseObjectEnumerator)
                                           {
                                               if ([obj isKindOfClass:[InitialViewController class]])
                                               {
                                                   
                                                   obj_sigup = (InitialViewController *) obj;
                                                   
                                                   break;
                                               }
                                           }
                                           
                                           if (obj_sigup==nil)
                                           {
                                               InitialViewController *message = [_viewController_global.storyboard instantiateViewControllerWithIdentifier:@"initail"];
                                               [_viewController_global.navigationController pushViewController:message animated:YES];
                                               
                                               //[self pushToViewcontroller:message];
                                           }
                                           else
                                           {
                                               CATransition* transition = [CATransition animation];
                                               transition.duration = 0.2;
                                               transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
                                               transition.type = kCATransitionFromRight; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
                                               //transition.subtype = kCATransitionFromTop; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
                                               [_viewController_global.navigationController.view.layer addAnimation:transition forKey:nil];
                                               [[_viewController_global navigationController] popToViewController:obj_sigup animated:NO];
                                               
                                               // [_controller_obj.navigationController popToViewController:obj_sigup animated:NO];
                                           }
                                           
                                           
                                           NSLog(@"navigation2nd--->%@",_viewController_global.navigationController.viewControllers);
                                       }];
            
            [alertController addAction:cancelAction];
            [alertController addAction:okAction];
            
            
            [_viewController_global presentViewController:alertController animated:YES completion:nil];
            
        }
    }
    
}

-(void)footerTap:(int)value
{
    NSLog(@"LeftMenu--->%d",value);
    
    if (value==2) {
        if (![[_viewController_global.navigationController visibleViewController]isKindOfClass:[CreateProjectImageController class]])
        {
            CreateProjectImageController *obj = [_viewController_global.storyboard instantiateViewControllerWithIdentifier:@"collectionimage"];
            [_viewController_global.navigationController pushViewController:obj animated:NO];
        }
    }
    
   else if (value==3) {
        if (![[_viewController_global.navigationController visibleViewController]isKindOfClass:[MessagesController class]])
        {
            MessagesController *obj = [_viewController_global.storyboard instantiateViewControllerWithIdentifier:@"msg"];
            [_viewController_global.navigationController pushViewController:obj animated:NO];
        }
    }
}

- (IBAction)headerRight:(UIButton *)sender {
    if (![sender.imageView.image isEqual:[UIImage imageNamed:@"icon1"]])
    {
        DashboardController *obj_sigup;
        
        for (UIViewController *obj in _viewController_global.navigationController.viewControllers.reverseObjectEnumerator)
        {
            if ([obj isKindOfClass:[DashboardController class]])
            {
                
                obj_sigup = (DashboardController *) obj;
                
                break;
            }
        }
        
        
        if (obj_sigup != nil)
        {
            [_viewController_global.navigationController popToViewController:obj_sigup animated:NO];
        }
        
        else
        {
            [_viewController_global.navigationController popToRootViewControllerAnimated:NO];
        }
    }
    
    
    
    
}
@end
