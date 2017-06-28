//
//  InitialViewController.m
//  ProRinger
//
//  Created by Kausik_Jati on 09/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "InitialViewController.h"
#import "SignupViewController.h"
#import "CreateProjectImageController.h"

@interface InitialViewController ()

@end

@implementation InitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    sidescroll.contentSize = CGSizeMake(self.view.frame.size.width*4, 0);
    
    page_controller.numberOfPages=4;
    page_controller.currentPage=0;

      
    
    
    
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    page_controller.currentPage=(scrollView.contentOffset.x/[UIScreen mainScreen].bounds.size.width);
    
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;
{
    static NSInteger previousPage = 0;
    
    CGFloat pageWidth = scrollView.frame.size.width;
    
    float fractionalPage = scrollView.contentOffset.x / pageWidth;
    
    NSInteger page = lround(fractionalPage);
    if (previousPage != page)
    {
        previousPage = page;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)privious_view:(id)sender {
    
    
    
}

- (IBAction)next_view:(id)sender {
    
    
    
}

- (IBAction)getstarted_tap:(id)sender {
    
    SignupViewController *obj=[self.storyboard instantiateViewControllerWithIdentifier:@"signup"];
    [self.navigationController pushViewController:obj animated:YES];
    
}

- (IBAction)postproject_tap:(id)sender {
    
    CreateProjectImageController *obj=[self.storyboard instantiateViewControllerWithIdentifier:@"collectionimage"];
    [self.navigationController pushViewController:obj animated:YES];
    
}
@end
