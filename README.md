#### NCPressButton

---

#### Import

##### #import "UIButton+NCPressButton.h"

---

####code

	UIButton *button1 = [UIButton pressButtonWithColor:[UIColor lightGrayColor] frame:frame title:@"NCPressButton" cornerRadius:8];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton pressButtonWithImage:[UIImage imageNamed:@"NCIcon"] frame:frame];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton pressButtonWithImage:[UIImage imageNamed:@"NCIcon"] imageColor:[UIColor redColor] frame:frame];
    [self.view addSubview:button3];