# NoDateTip
开发遇到网络中断时候,通常是出现以下两种页面,
#####图片+文字 (页面没有点击事件)
![显示图片+文字](http://upload-images.jianshu.io/upload_images/670033-5a0d04bea9624ca7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#####图片+按钮(点击按钮可继续刷新页面)
![显示图片+按钮](http://upload-images.jianshu.io/upload_images/670033-ff9e92eea171a115.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

为了方便开发者的使用,简单为大家提供了已经封装好的方法,一句代码调用即可.

#####将下边两个文件拖进项目,在需要的地方导入头文件
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/670033-aefd5fa0c7cce424.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#####调用方法如下
>1.图片+文字,使用的是类方法
2.图片+按钮,使用的是对方方法
请注意区分
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/670033-ee88b426e2aff979.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```
//图片+文字
[self.view addSubview: [ZNoDateTip OffInternetWithTipImgStr:@"off" TipLabStr:@"请重新加载" TipLabColor:[UIColor grayColor] TipLabFont:16]];


//图片+按钮
ZNoDateTip *noDateView = [[ZNoDateTip alloc]init];
[self.view addSubview: [noDateView OffInternetWithTipImgStr:@"off" TipBtnStr:@"点击重试" TipBtnColor:[UIColor blackColor] TipBtnBgColor:[UIColor yellowColor] tipButtonBlock:^(UIButton *btn) {    
NSLog(@"%@",btn);
[btn addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
    }]];

```
