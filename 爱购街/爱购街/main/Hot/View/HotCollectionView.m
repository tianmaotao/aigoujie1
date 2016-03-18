//
//  HotCollectionView.m
//  买买买
//
//  Created by huiwen on 16/2/3.
//  Copyright © 2016年 hxc. All rights reserved.
//

#import "HotCollectionView.h"
#import "HotCollectionViewCell.h"
#import "GoodsDetailViewController.h"
#define identifyHot @"HotCollectionViewCell"
#define identifyHotHeader @"HotCollectionViewHeaderCell"

@implementation HotCollectionView


- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout
{
    if (self = [super initWithFrame:frame collectionViewLayout:layout]) {
        
        self.delegate = self;
        self.dataSource = self;
        
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        
        [self registerClass:[HotCollectionViewCell class] forCellWithReuseIdentifier:identifyHot];
        
        [self registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:identifyHotHeader];
        
    }
    
    return self;
}

- (void)setModels:(NSMutableArray *)models
{
    if (_models != models) {
        _models = models;
    }
    
    [self reloadData];
    
}


#pragma mark - UICollectionView delegate
//1、指定组的个数
//- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
//{
//    return 2;
//    
//}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _models.count;
//    return 10;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HotCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifyHot forIndexPath:indexPath];
//    HomeModel *model = _models[indexPath.row];
    
    cell.homeModel = _models[indexPath.row];
    
    return cell;
    
    
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    return CGSizeMake((KScreenWidth - 30) / 2, (KScreenWidth - 30) * 3 / 4);
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    GoodsDetailViewController *goodCtrl = [[GoodsDetailViewController alloc] init];
    HomeModel *model = _models[indexPath.row];
    goodCtrl.goodID = model.id;
    
    [self.viewController.navigationController pushViewController:goodCtrl animated:YES];
}

//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
//{
//    UICollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:identifyHeader forIndexPath:indexPath];
//    
//    headerView.backgroundColor = [UIColor redColor];
//    return headerView;
//    
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
