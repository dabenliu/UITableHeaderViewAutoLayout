# UITableHeaderViewAutoLayout
### 应用：

- TableHeaderView高度自适应

  <img src="https://github.com/dabenliu/UITableHeaderViewAutoLayout/blob/main/ScreenShot2021-08-28%2022.18.01.gif" width=200>

### 关键代码

```
// 给header约束宽度，才能自适应高度
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

// 更新tableview布局，修改完内容后需要调用
- (void)updateLayout {
	UITableView *tableView = (UITableView *)self.superview;
	[tableView beginUpdates];
	[tableView layoutIfNeeded];
	[tableView endUpdates];
}
```

