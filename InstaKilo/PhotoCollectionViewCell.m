//
//  PhotoCollectionViewCell.m
//  InstaKilo
//
//  Created by Jaison Bhatti on 2017-09-20.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "PhotoCollectionViewCell.h"
#import "PhotoObject.h"

@interface PhotoCollectionViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PhotoCollectionViewCell

-(void)setPhotoObject:(PhotoObject *)photoObject {
    self.imageView.image = photoObject.image;
    _photoObject = photoObject;
}

@end
