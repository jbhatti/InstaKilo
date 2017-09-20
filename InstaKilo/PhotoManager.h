//
//  PhotoManager.h
//  InstaKilo
//
//  Created by Jaison Bhatti on 2017-09-20.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

@import UIKit;
@class Photo;
@class PhotoObject;

@interface PhotoManager : NSObject

- (NSInteger)numberOfSections;
- (NSInteger)numberOfItemsInSection:(NSInteger)section;
- (PhotoObject *)photoObjectAtIndexPath:(NSIndexPath *)indexPath;
- (Photo *)photoAtIndexPath:(NSIndexPath *)indexPath;




@end
