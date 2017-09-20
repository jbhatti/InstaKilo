//
//  PhotoManager.h
//  InstaKilo
//
//  Created by Jaison Bhatti on 2017-09-20.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Photo;

@interface PhotoManager : NSObject

@property (nonatomic, readonly) NSArray <Photo *>* photos;


@end
