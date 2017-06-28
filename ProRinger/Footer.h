//
//  Footer.h
//  ProRinger
//
//  Created by Kausik Jati on 10/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol footerDeleget <NSObject>

-(void)footerTap:(int)value;


@end

@interface Footer : UIView
{
    
    
}
@property (strong, nonatomic) IBOutlet UIView *footer_contentview;

- (IBAction)footerBtnTap:(UIButton *)sender;

@property(assign) id <footerDeleget> FooterDeleget;

@end
