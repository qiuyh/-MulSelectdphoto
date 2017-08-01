//
//  ViewController.m
//  textPhoto
//
//  Created by iMacQIU on 16/4/14.
//  Copyright © 2016年 iMacQIU. All rights reserved.
//

#import "ViewController.h"
#import "PictureViewController.h"
#import "myViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PictureViewController *vc = [[PictureViewController alloc] init];
    
    vc.maxNum  = 18;
    vc.itemSize = CGSizeMake(60, 60);
    vc.minimumInteritemSpacing = 5;
    vc.minimumLineSpacing = 5;
    vc.sectionInset = UIEdgeInsetsMake(5, 5, 0, 5);
    vc.pictureCollectonViewFrame = CGRectMake(0,100, self.view.frame.size.width, 70);
    vc.addImage = [UIImage imageNamed:@"添加.png"];
    
    [self addChildViewController:vc];
    self.view.frame = vc.view.frame;
    [self.view addSubview:vc.pictureCollectonView];
    
    vc.pictureCollectonView.backgroundColor = [UIColor grayColor];

}
- (IBAction)fdg:(id)sender {
    
    myViewController *my= [[myViewController alloc]init];
    
    [self.navigationController pushViewController:my animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
