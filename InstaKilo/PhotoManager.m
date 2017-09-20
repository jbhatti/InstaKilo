//
//  PhotoManager.m
//  InstaKilo
//
//  Created by Jaison Bhatti on 2017-09-20.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "PhotoManager.h"

@interface PhotoManager()

@property (nonatomic) NSArray* photoArray;

@end

@implementation PhotoManager

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.photoArray.count;
}

@end
