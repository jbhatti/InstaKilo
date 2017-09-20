//
//  PhotoObject.m
//  InstaKilo
//
//  Created by Jaison Bhatti on 2017-09-20.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "PhotoObject.h"

@implementation PhotoObject

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _image = [UIImage imageNamed:name];
    }
    return self;
}

@end
