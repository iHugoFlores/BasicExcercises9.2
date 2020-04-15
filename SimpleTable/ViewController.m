//
//  ViewController.m
//  SimpleTable
//
//  Created by Hugo Flores Perez on 4/15/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import "ViewController.h"
#import "TodoCell.h"
#import "DetailsController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray* dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self setUpDummyData];

    _tableView.rowHeight = UITableViewAutomaticDimension;
    _tableView.estimatedRowHeight = 100;
}

- (void)setUpDummyData {
    self.dataArray = [[NSMutableArray alloc] init];
    [self.dataArray addObject:[[TodoModel alloc] init:@"Test 1" description:@"Desc 1"]];
    [self.dataArray addObject:[[TodoModel alloc] init:@"Test 2" description:@"Desc 2"]];
    [self.dataArray addObject:[[TodoModel alloc] init:@"Test 3" description:@"Desc 3"]];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    TodoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.model = _dataArray[indexPath.row];
    [cell setView];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:false];
    DetailsController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"details"];
    vc.model = _dataArray[indexPath.row];
    [self presentViewController:vc animated:true completion:nil];
}

@end
