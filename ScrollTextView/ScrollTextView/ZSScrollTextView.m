//
//  ZSScrollTextView.m
//  ScrollTextView
//
//  Created by suning on 2018/10/30.
//  Copyright © 2018年 suning. All rights reserved.
//

#import "ZSScrollTextView.h"

@implementation ZSScrollTextView


- (CGSize)getSizeForText:(NSString *)text numberOfLines:(NSInteger)numberOfLines sizeThatFits:(CGSize)size {
    
    self.textLabel.text = text;
    NSInteger lines = self.textLabel.numberOfLines;
    self.textLabel.numberOfLines = numberOfLines;
    CGSize fitSize = [self.textLabel sizeThatFits:size];
    self.textLabel.numberOfLines = lines; // 复原
    return fitSize;
}

- (instancetype)init{
    self = [super init];
    [self addSubview:self.textLabel];
    self.showsHorizontalScrollIndicator = NO;
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    [self addSubview:self.textLabel];
    self.showsHorizontalScrollIndicator = NO;
    return self;
}

- (void)setScrollText:(NSString *)scrollText {
    _scrollText = scrollText;
    self.textLabel.text = scrollText;
    CGSize size = [self.textLabel sizeThatFits:CGSizeMake(self.bounds.size.width, MAXFLOAT)];
    self.textLabel.frame = CGRectMake(0, 0, size.width, size.height);
    self.contentSize = size;
}

- (UILabel *)textLabel {
    if (_textLabel == nil) {
        _textLabel = [[UILabel alloc] init];
        _textLabel.textColor = [UIColor whiteColor];
        _textLabel.font = [UIFont systemFontOfSize:14.0f];
        _textLabel.numberOfLines = 0;
    }
    return _textLabel;
}




@end
