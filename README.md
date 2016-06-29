### NCPressButton

---

####demo

---

![NCPressButton GIF](/NCPressButtonGIF.gif)


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
    
    UIButton *button4 = [UIButton pressButtonWithColor:[UIColor whiteColor] frame:frame title:@"NCPressButton" titleColor:[UIColor blackColor] borderColor:[UIColor blackColor] borderWidth:1 cornerRadius:25];
    [self.view addSubview:button4];