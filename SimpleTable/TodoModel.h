//
//  TodoModel.h
//  SimpleTable
//
//  Created by Hugo Flores Perez on 4/15/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TodoModel: NSObject
- (instancetype)init: (NSString *) taskTitle description: (NSString *) taskDesc;
@property NSString *title;
@property NSString *todoDescription;
@property NSDate *dueDate;
@property UIImage *image;
@end

NS_ASSUME_NONNULL_END
