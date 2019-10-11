import 'package:flutter/material.dart'; // 实现Material Design 设计风格的基础包
// Materila Design 是谷歌推出的一套视觉设计语言

// 设置主页   main 函数一定是执行MyApp 函数
void main() {
  runApp(new MyApp());
}

// MyApp 函数是整个应用的主组件
class MyApp extends StatelessWidget {
  // 这是整个应用的主组件
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App 示例",
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// 这是一个可变的 Widget 组件
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

// 状态类必须继承State 类，注意后面需要制定为MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: Center(
          child: Text("主页"),
        ));
  }
}
