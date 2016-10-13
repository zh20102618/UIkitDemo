//
//  ViewController.m
//  UIkitDemo
//
//  Created by 张晗 on 2016/10/13.
//  Copyright © 2016年 kuangxiang. All rights reserved.
//

#import "ViewController.h"
#import "VController1.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableVIew;

@property (nonatomic, strong) NSArray *titleArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"UIKit使用";
    
    self.titleArray = @[@"UIViewController", @"UINavigationController", @"UITabBarController", @"UITableViewController", @"其他ViewController", @"UIView"];
}

#pragma mark - tableView代理
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [self.titleArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
//        VController1 *vc = [[VController1 alloc] initWithNibName:@"VController1" bundle:nil];
        VController1 *vc = [[VController1 alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
