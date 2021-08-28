//
//  UITableHeaderView.m
//  UITableHeaderViewAutoLayout
//
//  Created by 大笨刘 on 2021/8/28.
//

#import "UITableHeaderView.h"

@implementation UITableHeaderView

// 给header约束宽度
- (void)didMoveToSuperview {
	[super didMoveToSuperview];
	if (self.superview) {
        UIView *superView = self.superview;
        self.translatesAutoresizingMaskIntoConstraints = NO;
        [NSLayoutConstraint constraintWithItem:self
                                     attribute:NSLayoutAttributeWidth
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:superView
                                     attribute:NSLayoutAttributeWidth
                                    multiplier:1.0f
                                      constant:0.0f].active = YES;
		[self updateLayout];
	}
}

// 更新tableview布局
- (void)updateLayout {
	UITableView *tableView = (UITableView *)self.superview;
	[tableView beginUpdates];
	[tableView layoutIfNeeded];
	[tableView endUpdates];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	self.label.text = textField.text;
	[self updateLayout];
	return YES;
}

@end
