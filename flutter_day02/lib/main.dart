import 'package:flutter/material.dart'; // 每个dart 文件几乎都会引入这个material 包

// 这个是干嘛用的呢？ 我理解的是他就相当于我们目前经常使用的 elementUI iview vant bootstarp 等等，它里面包含一些常用的组件 如文本输入框、图标、图片、行列布局Row、列排布局、装饰器、动画等。

// flutter 是dart 语言的移动应用框架，runApp 函数就是flutter 框架的入口
void main() {
  runApp(new MyApp());
}

// material Design 是谷歌推出的一套视觉设计语言  比如App 的换肤，而每一套皮肤就是一种设计语言  有古典风、炫酷风、极简风、Material Design 就是谷歌风的视觉设计语言。
class MyApp extends StatelessWidget {
// 这是整个应用的主要组件
  @override // 为什么要重写呢？
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new MyHomePage(),
        title: 'flutter demo',
        theme: new ThemeData(
          // 自定义主题
          primarySwatch: Colors.red,
        ));
  }
}

// 这是一个可改变的Widget
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('MaterialApp 示例'),
      ),
      body: Center(
        child: Text('主页'),
      ),
    );
  }
}
