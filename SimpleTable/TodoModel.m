//
//  TodoModel.m
//  SimpleTable
//
//  Created by Hugo Flores Perez on 4/15/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodoModel.h"

@interface TodoModel()

@end

@implementation TodoModel

- (instancetype)init: (NSString *) taskTitle description: (NSString *) taskDesc{
    self = [super init];
    _title = taskTitle;
    _todoDescription = taskDesc;
    _dueDate = [[NSDate alloc] init];
    _image = [UIImage systemImageNamed:@"burn"];
    return self;
}

@end
