//
//  AlertGreenView.h
//  YOKE
//
//  Created by ZOYOO on 2016/11/7.
//  Copyright © 2016年 张源海. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, GetGreenConventionType) {
    GetGreenConventionType_Recruit = 1,
    GetGreenConventionType_Video = 2,
};


typedef void (^CancelClickedBlock) ();

@interface AlertGreenView : UIView
@property (nonatomic, copy, setter = setCancelBlock:) void (^cancelBlock)(void);
@property (nonatomic, copy, setter = setDidDismissBlock:) void (^didDismissBlock)(AlertGreenView *alertView, NSInteger buttonIndex);

+ (AlertGreenView *)showGreenView:(GetGreenConventionType)greenType
                   viewController:(UIViewController *)vc
                            title:(NSString *)title
                          content:(NSString *)content
                          handler:(void (^)(AlertGreenView *alertView, NSInteger buttonIndex))block;
@end
