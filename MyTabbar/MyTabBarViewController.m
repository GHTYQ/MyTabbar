

//
//  MyTabBarViewController.m
//  MyTabbar
//
//  Created by 田彦卿 on 2018/7/19.
//  Copyright © 2018年 TYQ. All rights reserved.
//

#import "MyTabBarViewController.h"
#import "TYQFirstViewController.h"
#import "TYQSecoundViewController.h"
#import "TYQThirdViewController.h"
#import "TYQFourthViewController.h"
@interface MyTabBarViewController ()

@end

@implementation MyTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpTabbarItem:[TYQFirstViewController new] title:@"首页" image:@"home" selectImage:@"home_select"];
    
    [self setUpTabbarItem:[TYQSecoundViewController new] title:@"家园" image:@"yunan" selectImage:@"yunan_select"];
  
    [self setUpTabbarItem:[TYQThirdViewController new] title:@"哈哈" image:@"today" selectImage:@"today_select"];
    
    [self setUpTabbarItem:[TYQFourthViewController new] title:@"我的" image:@"mine" selectImage:@"mine_select"];
}
-(void)setUpTabbarItem:(UIViewController*)vc title:(NSString *)title image:(NSString*)image selectImage:(NSString*)selectImage{
    vc.tabBarItem.title=title;
    vc.tabBarItem.image =[UIImage imageNamed:image];
    vc.tabBarItem.selectedImage =[[UIImage imageNamed:selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [vc.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12]} forState:UIControlStateNormal];
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]}forState:UIControlStateSelected];
    [self addChildViewController:vc];
}


@end
