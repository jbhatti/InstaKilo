//
//  Photo.h
//  InstaKilo
//
//  Created by Jaison Bhatti on 2017-09-20.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

@import UIKit;
@class PhotoObject;

@interface Photo : NSObject

@property (nonatomic, readonly) NSArray <PhotoObject *>*photoObjects;
@property (nonatomic, readonly) NSString *name;
- (instancetype)initWithName:(NSString *)name;

@end
