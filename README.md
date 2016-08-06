# TBCALayerExtension
0行代码设置 UIView 圆角属性


####1.首先创建一个 UIView的 Category,拥有以下属性,并在实现文件中重写每个属性的 setter 与 getter 方法

```
//* 边线颜色 */
@property (nonatomic, strong) UIColor *borderColor;
//* 边线宽度 */
@property (nonatomic, assign) CGFloat borderWidth;
//* 圆角半径 */
@property (nonatomic, assign) CGFloat cornerRadius;
```
####重写属性方法
```
- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
    self.layer.rasterizationScale = [UIScreen mainScreen].scale;
    self.layer.shouldRasterize = YES;
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}
```

####2.分类创建完成以后,并没有实现我们想要的功能,原因是还需要在属性中加入一个关键字 "IBInspectable"

主要作用：使view内的变量可视化，并在 IB中能直接修改该属性的值修改后马上看到 (layer层除外)
因此需要在每个属性中加入该关键字,如下:

```
//* 边线颜色 */
@property (nonatomic, strong) IBInspectable UIColor *borderColor;
//* 边线宽度 */
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
//* 圆角半径 */
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
```
这样完成以后,就可以在 IB中看到添加的属性,如同下图:
![](http://chuantu.biz/t5/25/1470473144x3738746535.png)

####3.这样以后设置圆角属性就方便了,不用再对 UIView通过代码设置即可实现圆角属性

####4.即使通过代码去设置圆角,有了这个分类也方便很多,只需要导入该分类头文件,直接设置对应属性即可(如下),减少代码量;

```
#import "ViewController.h"
#import "UIView+TBCALayerExtension.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *firstView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //简单写法
    _firstView.borderColor = [UIColor blackColor];
    _firstView.cornerRadius = 5;
    _firstView.borderWidth = 2;

//    原始写法
//    _firstView.layer.backgroundColor = [UIColor blackColor].CGColor;
//    _firstView.layer.cornerRadius = 5;
//    _firstView.layer.borderWidth = 2;
//    _firstView.layer.masksToBounds = YES;
//    _firstView.layer.rasterizationScale = [UIScreen mainScreen].scale;
//    _firstView.layer.shouldRasterize = YES;
}
```



##是不是方便很多了.....O(∩_∩)O哈哈~
