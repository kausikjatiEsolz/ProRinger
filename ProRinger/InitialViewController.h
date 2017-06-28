//
//  InitialViewController.h
//  ProRinger
//
//  Created by Kausik_Jati on 09/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InitialViewController : UIViewController
{
    IBOutlet UIScrollView *sidescroll;
    IBOutlet UIPageControl *page_controller;
}
- (IBAction)privious_view:(id)sender;
- (IBAction)next_view:(id)sender;
- (IBAction)getstarted_tap:(id)sender;
- (IBAction)postproject_tap:(id)sender;
@end
