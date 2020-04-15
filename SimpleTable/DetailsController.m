//
//  DetailsController.m
//  SimpleTable
//
//  Created by Hugo Flores Perez on 4/15/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import "DetailsController.h"

@interface DetailsController ()
@property UIImageView *imageView;
@property UILabel *nameLabel;
@property UILabel *descriptionLabel;
@property UILabel *dateLabel;
@end

@implementation DetailsController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"dd MMM yyyy";
    
    _imageView = [[UIImageView alloc] init];
    _imageView.contentMode = UIViewContentModeScaleAspectFit;
    _nameLabel = [[UILabel alloc] init];
    _descriptionLabel = [[UILabel alloc] init];
    _dateLabel = [[UILabel alloc] init];
    
    _imageView.image = _model.image;
    _nameLabel.text = _model.title;
    _descriptionLabel.text = _model.todoDescription;
    _dateLabel.text = [formatter stringFromDate:_model.dueDate];
    
    [self setUpView];
}

- (void)setUpView {
    [self.view addSubview:_imageView];
    [self.view addSubview:_nameLabel];
    [self.view addSubview:_descriptionLabel];
    [self.view addSubview:_dateLabel];
    
    _imageView.translatesAutoresizingMaskIntoConstraints = false;
    _nameLabel.translatesAutoresizingMaskIntoConstraints = false;
    _descriptionLabel.translatesAutoresizingMaskIntoConstraints = false;
    _dateLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    [[_imageView.heightAnchor constraintEqualToConstant: 200] setActive:true];
    [[_imageView.widthAnchor constraintEqualToAnchor: _imageView.heightAnchor] setActive:true];
    [[_imageView.topAnchor constraintEqualToAnchor: self.view.topAnchor] setActive:true];
    [[_nameLabel.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor] setActive:true];
    [[_nameLabel.topAnchor constraintEqualToAnchor: _imageView.bottomAnchor constant:12] setActive:true];
    
    [[_descriptionLabel.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor] setActive:true];
    [[_descriptionLabel.topAnchor constraintEqualToAnchor: _nameLabel.bottomAnchor constant:12] setActive:true];
    
    [[_dateLabel.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor] setActive:true];
    [[_dateLabel.topAnchor constraintEqualToAnchor: _descriptionLabel.bottomAnchor constant:12] setActive:true];
}

@end
