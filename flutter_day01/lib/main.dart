import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '图片组件使用',
      home: Scaffold(
        appBar: AppBar(
          title: Text('图片组件使用指南'),
        ),
        body: Center(
          child: new Image.network(
            // 图片的url
            'https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=a9e671b9a551f3dedcb2bf64a4eff0ec/4610b912c8fcc3cef70d70409845d688d53f20f7.jpg',
            width: 300.0,
            height: 300.0,
            // 填充模式
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
