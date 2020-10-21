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
