//
//  AlertGreenView.m
//  YOKE
//
//  Created by ZOYOO on 2016/11/7.
//  Copyright © 2016年 张源海. All rights reserved.
//

#import "AlertGreenView.h"
#import "AppDelegate.h"

@interface AlertGreenView ()
@property (copy, nonatomic) NSString *title, *content;
@property (strong, nonatomic) UILabel *titleLabel;
@property (assign, nonatomic) GetGreenConventionType greenType;
@property (strong, nonatomic) UIView *baseView;
@property (strong, nonatomic) UIButton *agreenBtn, *refuseBtn;
@end

@implementation AlertGreenView

+ (AlertGreenView *)showGreenView:(GetGreenConventionType)greenType viewController:(UIViewController *)vc title:(NSString *)title content:(NSString *)content handler:(void (^)(AlertGreenView *, NSInteger))block
{
    AlertGreenView *bgView = [[AlertGreenView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    bgView.greenType = greenType;
    bgView.title = title;
    bgView.content = content;
    if (block) bgView.didDismissBlock = block;
    [vc.view addSubview:bgView];
    
    return bgView;
}

+ (AlertGreenView *)showGreenView:(GetGreenConventionType)greenType
          viewController:(UIViewController *)vc
                   title:(NSString *)title
                 content:(NSString *)content{
    AlertGreenView *bgView = [[AlertGreenView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    bgView.greenType = greenType;
    bgView.title = title;
    bgView.content = content;
    [vc.view addSubview:bgView];
    
//    UIView *userEnable = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    [bgView addSubview:userEnable];
//    
//    UIView *baseView = [UIView new];
//    baseView.layer.cornerRadius = 5;
//    baseView.layer.masksToBounds = YES;
//    baseView.backgroundColor = [UIColor colorWithHexString:@"272b37"];
//    [bgView addSubview:baseView];
//    
//    NSString *detailStr = [NSString stringWithFormat:@"%@\n\n%@",title,content];
//    UILabel *titleLabel = [UILabel new];
//    titleLabel.numberOfLines = 0;
//    titleLabel.text = detailStr;
//    titleLabel.textColor = [UIColor whiteColor];
//    titleLabel.font = [UIFont systemFontOfSize:14];
//    titleLabel.textAlignment = NSTextAlignmentLeft;
//    [baseView addSubview:titleLabel];
//    
//    UIButton *agreenBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [agreenBtn setTitle:@"我同意" forState:UIControlStateNormal];
//    [agreenBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    agreenBtn.backgroundColor = [UIColor colorWithHexString:@"FFDA44"];
//    agreenBtn.layer.masksToBounds = YES;
//    agreenBtn.layer.cornerRadius = 3;
//    agreenBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//    [agreenBtn bk_addEventHandler:^(id sender) {
//        [bgView removeAllSubviews];
//        [bgView removeFromSuperview];
//        bgView = nil;
//    } forControlEvents:UIControlEventTouchUpInside];
//    [baseView addSubview:agreenBtn];
//    
//    UIButton *refuseBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [refuseBtn setTitle:@"我不同意" forState:UIControlStateNormal];
//    [refuseBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    refuseBtn.backgroundColor = [UIColor whiteColor];
//    refuseBtn.layer.masksToBounds = YES;
//    refuseBtn.layer.cornerRadius = 3;
//    refuseBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//    [refuseBtn bk_addEventHandler:^(id sender) {
//        AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//        [delegate backToHomeViewController];
//    } forControlEvents:UIControlEventTouchUpInside];
//    [baseView addSubview:refuseBtn];
//    
//    CGSize detailSize = [detailStr getSizeWithFont:[UIFont systemFontOfSize:14] constrainedToSize:CGSizeMake(280, 300)];
//    [baseView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.size.mas_equalTo(CGSizeMake(300, detailSize.height + 90));
//        make.center.mas_equalTo(bgView);
//    }];
//    
//    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.size.mas_equalTo(CGSizeMake(detailSize.width, detailSize.height+20));
//        make.centerX.mas_equalTo(baseView.centerX);
//        make.top.mas_equalTo(baseView.top).with.offset(10);
//    }];
//    
//    if (greenType == GetGreenConventionType_Video) {
//        [agreenBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.size.mas_equalTo(CGSizeMake(100, 35));
//            make.centerX.mas_equalTo(baseView);
//            make.top.mas_equalTo(titleLabel.mas_bottom).with.offset(5);
//        }];
//
//    }else{
//        [refuseBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.size.mas_equalTo(CGSizeMake(100, 35));
//            make.leading.mas_equalTo(baseView.mas_leading).with.offset(35);
//            make.top.mas_equalTo(titleLabel.mas_bottom).with.offset(5);
//        }];
//        [agreenBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.size.mas_equalTo(CGSizeMake(100, 35));
//            make.trailing.mas_equalTo(baseView.mas_trailing).with.offset(-35);
//            make.top.mas_equalTo(titleLabel.mas_bottom).with.offset(5);
//        }];
//    }
    
    return bgView;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    UIView *userEnable = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self addSubview:userEnable];
    
    _baseView = [UIView new];
    _baseView.layer.cornerRadius = 5;
    _baseView.layer.masksToBounds = YES;

    [self addSubview:_baseView];
    
    _titleLabel = [UILabel new];
    _titleLabel.numberOfLines = 0;
    _titleLabel.textColor = [UIColor whiteColor];
    _titleLabel.font = [UIFont systemFontOfSize:14];
    _titleLabel.textAlignment = NSTextAlignmentLeft;
    [_baseView addSubview:_titleLabel];
    
    _agreenBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_agreenBtn setTitle:@"我同意" forState:UIControlStateNormal];
    [_agreenBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _agreenBtn.backgroundColor = [UIColor colorWithHexString:@"FFDA44"];
    _agreenBtn.layer.masksToBounds = YES;
    _agreenBtn.layer.cornerRadius = 3;
    _agreenBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [_agreenBtn bk_addEventHandler:^(id sender) {
        [self removeAllSubviews];
        [self removeFromSuperview];
    } forControlEvents:UIControlEventTouchUpInside];
    [_baseView addSubview:_agreenBtn];
    
    _refuseBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_refuseBtn setTitle:@"我不同意" forState:UIControlStateNormal];
    [_refuseBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _refuseBtn.backgroundColor = [UIColor whiteColor];
    _refuseBtn.layer.masksToBounds = YES;
    _refuseBtn.layer.cornerRadius = 3;
    _refuseBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [_refuseBtn bk_addEventHandler:^(id sender) {
        if (_didDismissBlock) {
            _didDismissBlock(self, 0);
        } else {
            AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            [delegate backToHomeViewController];
        }
    } forControlEvents:UIControlEventTouchUpInside];
    [_baseView addSubview:_refuseBtn];
    
    return self;
}

- (void)setTitle:(NSString *)title {
    _title = title;
    
}

- (void)setContent:(NSString *)content {
    _content = content;
    [self setUpUI];
}

- (void)setUpUI {
    
    UIColor *backColor ;
    if (_greenType == GetGreenConventionType_Video) {
        backColor = [UIColor colorWithRGB:0x2e2e2e alpha:0.3];
    }else{
        backColor = [UIColor colorWithRGB:0x2e2e2e alpha:1];
    }
    _baseView.backgroundColor = backColor;
    
    NSString *detailStr = [NSString stringWithFormat:@"%@\n\n%@",_title, _content];
    CGSize detailSize = [detailStr getSizeWithFont:[UIFont systemFontOfSize:14] constrainedToSize:CGSizeMake(280, 300)];
    [_baseView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, detailSize.height + 90));
        make.center.mas_equalTo(self);
    }];
    
    _titleLabel.text = detailStr;
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(detailSize.width, detailSize.height+20));
        make.centerX.mas_equalTo(_baseView.centerX);
        make.top.mas_equalTo(_baseView.top).with.offset(10);
    }];
    
    if (_greenType == GetGreenConventionType_Video) {
        [_agreenBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(100, 35));
            make.centerX.mas_equalTo(_baseView);
            make.top.mas_equalTo(_titleLabel.mas_bottom).with.offset(5);
        }];
    } else {
        [_refuseBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(100, 35));
            make.leading.mas_equalTo(_baseView.mas_leading).with.offset(35);
            make.top.mas_equalTo(_titleLabel.mas_bottom).with.offset(5);
        }];
        [_agreenBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(100, 35));
            make.trailing.mas_equalTo(_baseView.mas_trailing).with.offset(-35);
            make.top.mas_equalTo(_titleLabel.mas_bottom).with.offset(5);
        }];
    }
}

@end


































