//
//  TodoCell.m
//  SimpleTable
//
//  Created by Hugo Flores Perez on 4/15/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import "TodoCell.h"

@implementation TodoCell

UIImageView *imageView;
UILabel *nameLabel;

- (void)awakeFromNib {
    [super awakeFromNib];
    
    imageView = [[UIImageView alloc] init];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    nameLabel = [[UILabel alloc] init];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setView {
    imageView.image = _model.image;
    nameLabel.text = _model.title;
    
    [self.contentView addSubview:imageView];
    [self.contentView addSubview:nameLabel];
    
    imageView.translatesAutoresizingMaskIntoConstraints = false;
    nameLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    [[imageView.heightAnchor constraintEqualToConstant: 100] setActive:true];
    [[imageView.widthAnchor constraintEqualToAnchor: imageView.heightAnchor] setActive:true];
    [[imageView.topAnchor constraintEqualToAnchor: self.contentView.topAnchor] setActive:true];
    [[imageView.bottomAnchor constraintEqualToAnchor: self.contentView.bottomAnchor] setActive:true];
    [[nameLabel.leftAnchor constraintEqualToAnchor: imageView.rightAnchor constant:12] setActive:true];
    [[nameLabel.centerYAnchor constraintEqualToAnchor: self.contentView.centerYAnchor] setActive:true];
}

@end
