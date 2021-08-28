//
//  UITableHeaderView.h
//  UITableHeaderViewAutoLayout
//
//  Created by 大笨刘 on 2021/8/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableHeaderView : UIView <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

NS_ASSUME_NONNULL_END
