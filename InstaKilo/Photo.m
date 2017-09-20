//
//  Photo.m
//  InstaKilo
//
//  Created by Jaison Bhatti on 2017-09-20.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "Photo.h"
#import "PhotoObject.h"

@implementation Photo

-(instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
        [self createPhotos];
    }
    return self;
}

- (void)createPhotos {
    if ([_name isEqualToString:@"Basketball"]) {
        [self createPhotosWithName:@"basketball"];
    }
    if ([_name isEqualToString:@"Nerds"]) {
        [self createPhotosWithName:@"nerd"];
    }
}

- (void)createPhotosWithName:(NSString *)name {
    NSMutableArray <PhotoObject *> *temp = [NSMutableArray array];
    for (NSInteger i = 1; i < 6; ++i) {
        NSString *imgName = [NSString stringWithFormat:@"%@%ld.jpg", name, (long)i];
        [temp addObject:[[PhotoObject alloc] initWithName:imgName]];
    }
    _photoObjects = [temp copy];
}

@end
