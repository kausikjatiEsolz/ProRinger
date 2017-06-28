//
//  CreateProjectImageController.h
//  ProRinger
//
//  Created by Kausik_Jati on 16/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateProjectImageCell.h"
#import "Json_Class.h"

@interface CreateProjectImageController : UIViewController<UICollectionViewDelegate>
{
    IBOutlet UICollectionView *project_collectionview;
    CreateProjectImageCell *CELL;
    Json_Class *url_obj;
    NSMutableArray *api_ary;
    IBOutlet UIButton *catagory_btn;
    
}
@property (strong, nonatomic) IBOutlet UIView *collectionview_headerview;
- (IBAction)catagory_tap:(id)sender;
@end
