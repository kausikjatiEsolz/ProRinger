//
//  MessageDetailsController.m
//  ProRinger
//
//  Created by Kausik Jati on 13/06/17.
//  Copyright © 2017 Kausik Jati. All rights reserved.
//

#import "MessageDetailsController.h"
#import "AppHeader.h"


#define RGB(r, g, b)	 [UIColor colorWithRed: (r) / 255.0 green: (g) / 255.0 blue: (b) / 255.0 alpha : 1]

@interface MessageDetailsController ()
{
    NSMutableArray *array;
    
    UIFont *font;
}

@end

@implementation MessageDetailsController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    AppHeader *header = [AppHeader new];
    
    [header Appheader_sideMenu_Footer_Load :self HeaderLeftBtn:@"back" HeaderRightBtn:@"home" HeaderText:@"Project" Footer:NO];
    
    array = [NSMutableArray new];
    
    font = [UIFont fontWithName:@"OpenSans" size:14];
    
    NSArray *new = [[NSArray alloc]initWithObjects:@{@"id":@"3",@"user":@"S",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@""},@{@"id":@"3",@"user":@"S",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@""},@{@"id":@"3",@"user":@"S",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@""}, nil];
    NSArray *new1 = [[NSArray alloc]initWithObjects:@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@"photo_sample_01"},@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@"photo_sample_01"},@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@"photo_sample_01"}, nil];
    NSArray *new2 = [[NSArray alloc]initWithObjects:@{@"id":@"3",@"user":@"S",@"msg":@"",@"image":@"photo_sample_03"},@{@"id":@"3",@"user":@"S",@"msg":@"",@"image":@"photo_sample_04"},@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@"photo_sample_01"},@{@"id":@"3",@"user":@"S",@"msg":@"",@"image":@"photo_sample_03"},@{@"id":@"3",@"user":@"S",@"msg":@"",@"image":@"photo_sample_04"},@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@"photo_sample_01"}, nil];
    NSArray *new3 = [[NSArray alloc]initWithObjects:@{@"id":@"2",@"user":@"R",@"msg":@"",@"image":@"photo_sample_02"},@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@"photo_sample_01"},@{@"id":@"2",@"user":@"R",@"msg":@"",@"image":@"photo_sample_02"},@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@"photo_sample_01"},@{@"id":@"2",@"user":@"R",@"msg":@"",@"image":@"photo_sample_02"},@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@"photo_sample_01"},@{@"id":@"2",@"user":@"R",@"msg":@"",@"image":@"photo_sample_02"},@{@"id":@"2",@"user":@"R",@"msg":@" 1500s",@"image":@"photo_sample_01"},@{@"id":@"2",@"user":@"S",@"msg":@"",@"image":@"photo_sample_02"},@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@"photo_sample_01"},@{@"id":@"2",@"user":@"R",@"msg":@"",@"image":@"photo_sample_02"},@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum 1500s",@"image":@"photo_sample_01"},@{@"id":@"2",@"user":@"S",@"msg":@"",@"image":@"photo_sample_02"},@{@"id":@"2",@"user":@"R",@"msg":@"Lorem Ipsum is simply since theLorem Ipsum has been the industry's standard dummy text ever since the 1500s",@"image":@"photo_sample_01"}, nil];
   
    NSMutableDictionary *dic = [NSMutableDictionary new];
    [dic setObject:@"12-04-17" forKey:@"date"];
    [dic setObject:new forKey:@"info"];
    
    
    NSMutableDictionary *dic1 = [NSMutableDictionary new];
    [dic1 setObject:@"13-04-17" forKey:@"date"];
    [dic1 setObject:new1 forKey:@"info"];
    
    
    NSMutableDictionary *dic2 = [NSMutableDictionary new];
    [dic2 setObject:@"15-04-17" forKey:@"date"];
    [dic2 setObject:new2 forKey:@"info"];
    
    NSMutableDictionary *dic3 = [NSMutableDictionary new];
    [dic3 setObject:@"16-04-17" forKey:@"date"];
    [dic3 setObject:new3 forKey:@"info"];
    
    
    [array addObject:dic];
    [array addObject:dic1];
    [array addObject:dic2];
    [array addObject:dic3];
    
    
    NSLog(@"array--->%@",array);
    
    
    chatTable.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:.5f];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"chat_background(1)"]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID=@"CellID";
    
    UITableViewCell *myCell=[tableView dequeueReusableCellWithIdentifier:cellID];
    
    if(myCell==nil)
    {
        
        myCell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
    }
    
    myCell.backgroundColor = [UIColor clearColor];
    
    myCell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return myCell;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    for (__weak UIView *view in cell.subviews)
    {
        [view removeFromSuperview];
        
        //view = nil;
    }
    UIView *view_chat = [[UIView alloc]init];
    
    UILabel *chrt_show_lbl = [[UILabel alloc]init];
    chrt_show_lbl.font =font ;
    chrt_show_lbl.numberOfLines = 999;
    chrt_show_lbl.textColor = [UIColor blackColor];
    
    
    UIImageView *image = [[UIImageView alloc]init];

    image.hidden = YES;
    
     chrt_show_lbl.text = [[[[array objectAtIndex:indexPath.section] valueForKey:@"info"] objectAtIndex:indexPath.row] valueForKey:@"msg"];
    
    
    if ([[[[[array objectAtIndex:indexPath.section] valueForKey:@"info"] objectAtIndex:indexPath.row] valueForKey:@"user"] isEqualToString:@"S"])
    {
         view_chat.frame = CGRectMake(tableView.frame.size.width-tableView.frame.size.width/1.3 - 10, 10, tableView.frame.size.width/1.3, cell.frame.size.height-20);
        
        view_chat.backgroundColor = RGB(255, 206, 147);
        
        
        if ( chrt_show_lbl.text.length>0)
        {
            float widthIs =  [chrt_show_lbl.text boundingRectWithSize:chrt_show_lbl.frame.size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{ NSFontAttributeName:chrt_show_lbl.font } context:nil] .size.width;
            
            if (widthIs >= view_chat.frame.size.width-30)
            {
                chrt_show_lbl.frame = CGRectMake(15 , 15, view_chat.frame.size.width-30, [self findHeightForText:chrt_show_lbl.text havingWidth:view_chat.frame.size.width-30 andFont:chrt_show_lbl.font].height+10);
                
                
                
                
            }
            else
            {
                view_chat.frame = CGRectMake(tableView.frame.size.width-widthIs-30 - 10, 10, widthIs+30, cell.frame.size.height-20);
                
                chrt_show_lbl.frame = CGRectMake(15 , 15, view_chat.frame.size.width-30, view_chat.frame.size.height-30);
                
                
                
            }
        }
        
        else
        {
            image.hidden = NO;
             view_chat.frame = CGRectMake(tableView.frame.size.width-tableView.frame.size.width/2 - 10, 10, tableView.frame.size.width/2, cell.frame.size.height-20);
            
            
            image.frame = CGRectMake(2, 2, view_chat.frame.size.width-4, view_chat.frame.size.height-4);
            
             image.image = [UIImage imageNamed:[[[[array objectAtIndex:indexPath.section] valueForKey:@"info"] objectAtIndex:indexPath.row] valueForKey:@"image"]];
        }
        
        
        
        
    }
    
    else
    {
        view_chat.frame = CGRectMake(10, 10, tableView.frame.size.width/1.3, cell.frame.size.height-20);
        
        view_chat.backgroundColor = [UIColor whiteColor];
        
        
        if ( chrt_show_lbl.text.length>0)
        {
        
        float widthIs =  [chrt_show_lbl.text boundingRectWithSize:chrt_show_lbl.frame.size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{ NSFontAttributeName:chrt_show_lbl.font } context:nil] .size.width;
        
        if (widthIs >= view_chat.frame.size.width-30)
        {
            chrt_show_lbl.frame = CGRectMake(15, 15, view_chat.frame.size.width-30, view_chat.frame.size.height-30);
            
            
            
        }
        else
        {
            view_chat.frame = CGRectMake(10, 10, widthIs+30, cell.frame.size.height-20);
            
            chrt_show_lbl.frame = CGRectMake(15, 15, view_chat.frame.size.width-30, view_chat.frame.size.height-30);
            
            
            
        }
            
        }
        
        else
        {
            image.hidden = NO;
            view_chat.frame = CGRectMake(10, 10, tableView.frame.size.width/2, cell.frame.size.height-20);
            
            image.frame = CGRectMake(2, 2, view_chat.frame.size.width-4, view_chat.frame.size.height-4);
            
            image.image = [UIImage imageNamed:[[[[array objectAtIndex:indexPath.section] valueForKey:@"info"] objectAtIndex:indexPath.row] valueForKey:@"image"]];
        }
        

    }
    
    
    
    [cell addSubview:view_chat];
    [view_chat addSubview:chrt_show_lbl];
    [view_chat addSubview:image];
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[array objectAtIndex:(int)section] valueForKey:@"info"] count] ;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return array.count;
}



- (CGSize)findHeightForText:(NSString *)text havingWidth:(CGFloat)widthValue andFont:(UIFont *)font {
    CGSize size = CGSizeZero;
    if (text) {
        CGRect frame = [text boundingRectWithSize:CGSizeMake(widthValue, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{ NSFontAttributeName:font } context:nil];
        size = CGSizeMake(frame.size.width, frame.size.height + 1);
    }
    return size;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 21)];
    
    view.backgroundColor = [UIColor clearColor];
    
    
    UILabel *date_lbl = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 30, 21)];
    date_lbl.font = [UIFont fontWithName:@"OpenSans" size:10];
    
     float widthIs =  [[[array objectAtIndex:section] valueForKey:@"date"] boundingRectWithSize:date_lbl.frame.size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{ NSFontAttributeName:date_lbl.font } context:nil] .size.width+20;
    
    
    date_lbl.frame = CGRectMake(view.frame.size.width/2 - widthIs/2,view.frame.size.height/2-21/2 , widthIs, 21);
    
    
    date_lbl.backgroundColor = [UIColor darkGrayColor];
    
    date_lbl.text = [[array objectAtIndex:section] valueForKey:@"date"];
    
    date_lbl.textAlignment = NSTextAlignmentCenter;
    
    
    date_lbl.clipsToBounds = YES;
    date_lbl.layer.cornerRadius = 5;
    date_lbl.textColor = [UIColor whiteColor];
    
    [view addSubview:date_lbl];
    
    return view;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 21;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize height = [self findHeightForText:[[[[array objectAtIndex:indexPath.section] valueForKey:@"info"] objectAtIndex:indexPath.row] valueForKey:@"msg"] havingWidth:tableView.frame.size.width/1.5 andFont:font];
    
    if ([[[[[array objectAtIndex:indexPath.section] valueForKey:@"info"] objectAtIndex:indexPath.row] valueForKey:@"msg"] length]>0)
    {
        if (height.height<30)
        {
            return height.height+50 ;
        }
        else
        {
            return height.height+50;
            
        }
    }
    
    else
    {
        return tableView.frame.size.width/2;
    }
   
    
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
