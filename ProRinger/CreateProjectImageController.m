//
//  CreateProjectImageController.m
//  ProRinger
//
//  Created by Kausik_Jati on 16/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "CreateProjectImageController.h"
#import "AppHeader.h"
#import "UIImageView+WebCache.h"
#import "CreateProjectStep2Controller.h"
#import "CreateProjectStep1Controller.h"

@interface CreateProjectImageController ()

@end

@implementation CreateProjectImageController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    url_obj=[Json_Class new];
    
    AppHeader *header=[AppHeader new];
    [header Appheader_sideMenu_Footer_Load:self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:@"" Footer:NO];
    
    project_collectionview.backgroundColor=[UIColor clearColor];
    
    [self urlData];
    
    
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if (kind == UICollectionElementKindSectionHeader) {
        
        
         UICollectionReusableView *reusableview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"collectionview_headerview" forIndexPath:indexPath];
        
        return reusableview;
        
    }
    return nil;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
{
    return api_ary.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    
    CELL=[project_collectionview dequeueReusableCellWithReuseIdentifier:@"projectimage" forIndexPath:indexPath];
    
   // CELL.backgroundColor=[UIColor redColor];
    //CELL.image.backgroundColor=[UIColor clearColor];
    
     CELL.label.text=[[api_ary objectAtIndex:indexPath.row]valueForKey:@"category_name"];
     [CELL.image sd_setImageWithURL:[NSURL URLWithString:[[api_ary objectAtIndex:indexPath.row]valueForKey:@"category_image"]] placeholderImage:nil];
    
    

    
    
    return CELL;
}


- (CGSize)collectionView:(UICollectionView *)collectionView  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath


{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    float cellWidth = screenWidth / 3.0-1;
    CGSize size = CGSizeMake(cellWidth, cellWidth);
    
    return size;
}
//-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
//    [project_collectionview/*(that's my collection view name)*/ reloadData];
//}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;
{
    CreateProjectStep2Controller *obj = [self.storyboard instantiateViewControllerWithIdentifier:@"step2"];
    
    NSString *str=[[api_ary objectAtIndex:indexPath.row]valueForKey:@"category_name"];
    
    obj.header_str=str;
    
    obj.id_str= [[api_ary objectAtIndex:indexPath.row]valueForKey:@"id"];
    
    [self.navigationController pushViewController:obj animated:YES];
}


-(void)urlData
{
    NSString *url_str=[NSString stringWithFormat:@"%@app_categorylist?",App_Domain_Url];
    
    NSMutableURLRequest *request=[[NSMutableURLRequest alloc]init];
    
    [request setURL:[NSURL URLWithString:url_str]];
    
    [url_obj GlobalDict:request Globalstr:@"array" lodaer:YES Withblock:^(id result, NSError *error)
     {
         
         NSString *response=[NSString stringWithFormat:@"%@",[result valueForKey:@"response"]];
         
         if ([response isEqualToString:@"1"]) {
             
             //NSLog(@"%@",result);
             api_ary=[result valueForKey:@"info_array"];
             NSLog(@"%@",api_ary);
             [project_collectionview reloadData];
         }
         
     }];
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

- (IBAction)catagory_tap:(id)sender {
    
    CreateProjectStep1Controller *obj = [self.storyboard instantiateViewControllerWithIdentifier:@"step1"];
    
    [self.navigationController pushViewController:obj animated:YES];
    
}
@end
