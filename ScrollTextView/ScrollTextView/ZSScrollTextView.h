//
//  ZSScrollTextView.h
//  ScrollTextView
//
//  Created by suning on 2018/10/30.
//  Copyright © 2018年 suning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZSScrollTextView : UIScrollView

@property (nonatomic, copy) NSString *scrollText;
@property (nonatomic, strong) UILabel *textLabel;

- (CGSize)getSizeForText:(NSString *)text
           numberOfLines:(NSInteger)numberOfLines
            sizeThatFits:(CGSize)size;
@end
