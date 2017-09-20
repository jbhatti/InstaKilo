//
//  PhotoObject.h
//  InstaKilo
//
//  Created by Jaison Bhatti on 2017-09-20.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

@import UIKit;

@interface PhotoObject : NSObject

- (instancetype) initWithName:(NSString *)name;
@property (nonatomic, readonly) UIImage *image;

@end
