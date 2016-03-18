//
//  HomeModel.h
//  买买买
//
//  Created by Jhwilliam on 16/2/1.
//  Copyright © 2016年 hxc. All rights reserved.
//

#import "BaseModel.h"

@interface HomeModel : BaseModel

//@property(nonatomic,copy)NSString       *createDate;       //微博创建时间
//@property(nonatomic,retain)NSNumber     *weiboId;           //微博ID
//@property(nonatomic,copy)NSString       *text;              //微博的内容
//@property(nonatomic,copy)NSString       *source;              //微博来源
//@property(nonatomic,retain)NSNumber     *favorited;         //是否已收藏
//@property(nonatomic,copy)NSString       *thumbnailImage;     //缩略图片地址
//@property(nonatomic,copy)NSString       *bmiddlelImage;     //中等尺寸图片地址
//@property(nonatomic,copy)NSString       *originalImage;     //原始图片地址
//@property(nonatomic,retain)NSDictionary *geo;               //地理信息字段
//@property(nonatomic,retain)NSNumber     *repostsCount;      //转发数
//@property(nonatomic,retain)NSNumber     *commentsCount;      //评论数
//@property(nonatomic, strong)NSArray *picArr;               //多图url


@property(nonatomic,copy)NSString *image_url;
@property(nonatomic,copy)NSString *cover_image_url;
@property(nonatomic,copy)NSString *target_id;
@property(nonatomic,copy)NSString *id;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *type;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *url;
@property(nonatomic,copy)NSString *target_url;
@property(nonatomic,copy)NSString *descriptions;
@property(nonatomic,strong)NSMutableArray *image_urls;
@property(nonatomic,retain)NSNumber *favorites_count;
//@property(nonatomic,copy)NSString *favorites_count;
@property(nonatomic,retain)NSNumber *price;
//@property(nonatomic,copy)NSString *price;
@property(nonatomic,copy)NSString *purchase_url;
@property(nonatomic,retain)NSNumber *likes_count;
@property(nonatomic,strong)NSMutableArray *channels;
@property(nonatomic,copy)NSString *icon_url;
@property(nonatomic,strong)NSMutableArray *subcategories;
@property(nonatomic,copy)NSString *key;
@property(nonatomic,strong)NSMutableArray *hot_words;



@end
