//
//  PhotoCollectionReusableView.m
//  InstaKilo
//
//  Created by Jaison Bhatti on 2017-09-20.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "PhotoCollectionReusableView.h"
#import "Photo.h"

@interface PhotoCollectionReusableView()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation PhotoCollectionReusableView

-(void)setPhoto:(Photo *)photo {
    self.label.text = photo.name;
    _photo = photo;
}

@end
