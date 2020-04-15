//
//  TodoCell.h
//  SimpleTable
//
//  Created by Hugo Flores Perez on 4/15/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import "TodoModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TodoCell : UITableViewCell
@property TodoModel *model;
- (void)setView;
@end

NS_ASSUME_NONNULL_END
