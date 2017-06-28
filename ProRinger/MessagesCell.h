//
//  MessagesCell.h
//  ProRinger
//
//  Created by Kausik_Jati on 13/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessagesCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *main_img;
@property (strong, nonatomic) IBOutlet UILabel *name_lbl;
@property (strong, nonatomic) IBOutlet UILabel *conversation_lbl;
@property (strong, nonatomic) IBOutlet UILabel *time_lbl;

@end
