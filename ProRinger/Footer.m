//
//  Footer.m
//  ProRinger
//
//  Created by Kausik Jati on 10/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "Footer.h"

@implementation Footer
{
    
}
@synthesize footer_contentview,FooterDeleget;
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
        self=[[[NSBundle mainBundle] loadNibNamed:@"Footer" owner:self options:nil]objectAtIndex:0];
    }
    
   
    
    footer_contentview.layer.masksToBounds = NO;
    footer_contentview.layer.shadowOffset = CGSizeMake(1, 1);
    footer_contentview.layer.shadowRadius = 1.5;
    footer_contentview.layer.shadowOpacity = 0.5;
    footer_contentview.layer.shadowColor = [[UIColor darkGrayColor] CGColor];
    
    
    
    return self;
    
    
}

- (IBAction)footerBtnTap:(UIButton *)sender {
    
    
    for (id obj in footer_contentview.subviews)
    {
        if ([obj isKindOfClass:[UIImageView class]])
        {
            UIImageView *img = (UIImageView *)obj;
            
            if (img.tag==sender.tag)
            {
                if (img.tag==0)
                {
                    img.image = [UIImage imageNamed:@"ic_dashboard_selected"];
                }
                else if (img.tag==1)
                {
                    img.image = [UIImage imageNamed:@"ic_my_project_selected"];
                }
                else if (img.tag==3)
                {
                    img.image = [UIImage imageNamed:@"ic_message_selected"];
                }
                else if (img.tag==4)
                {
                    img.image = [UIImage imageNamed:@"ic_fav_pro_selected"];
                }
            
                
            }
            else
            {
                if (img.tag==0)
                {
                    img.image = [UIImage imageNamed:@"ic_dashboard"];
                }
                else if (img.tag==1)
                {
                    img.image = [UIImage imageNamed:@"ic_my_project"];
                }
                else if (img.tag==3)
                {
                    img.image = [UIImage imageNamed:@"ic_message"];
                }
                else if (img.tag==4)
                {
                    img.image = [UIImage imageNamed:@"ic_fav_pro"];
                }
            }
        }
        else if ([obj isKindOfClass:[UILabel class]])
        {
            UILabel *lbl = (UILabel *)obj;
            
            if (lbl.tag == sender.tag)
            {
                lbl.textColor = [UIColor colorWithRed:241.0/255.0 green:89.0/255.0 blue:42.0/255.0 alpha:1];
            }
            else
            {
                lbl.textColor = [UIColor darkGrayColor];
            }
            
        }
    }
    
     [FooterDeleget footerTap:(int)sender.tag];
    
    
}
@end
