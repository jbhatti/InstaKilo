//
//  ViewController.m
//  InstaKilo
//
//  Created by Jaison Bhatti on 2017-09-20.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ViewController.h"
#import "PhotoCollectionViewCell.h"
#import "PhotoManager.h"
#import "PhotoCollectionReusableView.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) PhotoManager* manager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.manager = [[PhotoManager alloc] init];
    self.title = @"Photos";
    [self handleLayout];
}


- (void) handleLayout {
    UICollectionViewFlowLayout * layout= (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
    CGFloat halfWidth = self.collectionView.frame.size.width/2;
    layout.itemSize = CGSizeMake(halfWidth, halfWidth);

}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.manager numberOfSections];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.manager numberOfItemsInSection:section];
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    PhotoObject *photoObject = [self.manager photoObjectAtIndexPath:indexPath];
    cell.photoObject = photoObject;
    return cell;
}

- (UICollectionReusableView *) collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionReusableView *view;
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"Cell" forIndexPath:indexPath];
        view.photo = [self.manager photoAtIndexPath:indexPath];
    }
    return view;
}






@end
