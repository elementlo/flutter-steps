# Flutter Steps

写Flutter过程中的知识点, 技巧记录

## Involved
* 1. 不同Widget生命周期探索;

* 2. 使用Key同步Widget间的状态;

* 3. 初步使用注解生成Dart代码
Dart的APT比Java要弱一些, 但是更灵活, 甚至可以拦截没有注解的类和方法.
具体见builder.dart, 使用/*flutter packages pub run build_runner build*/生成目标代码

另外生成模板代码有很多可行方法:
(1) 拼接字符串;
(2) 使用Dart的``` ```;
(3) 使用Dart预置的Mustach;
(4) 使用package code_builder

* 4. Android Hybrid Composition模式体验
在Android Hybrid Composition页面, 使用混合方案显示了一个原生的Textview, 打开安卓的视图边界功能可以看到原生View
的边界被正确的绘制出来了, 而且用Flutter写的Text Widget也能正常显示在原生View上方, 并且也能被正常绘制边界, 但是离开
原神view的区域, Flutter的Widget边界就不能被绘制出来了, 这是因为当Flutter Widget与原生View有重叠时, Flutter Widget
也会通过合成方案用FlutterImageView来绘制, 并且如果多个Widget被显示在同一个原生View区域上时, 他们会共享同一个
FlutterImageview. 具体可以细细在Demo中体验.
