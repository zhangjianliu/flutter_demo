import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '文本组件的使用',
        home: Scaffold(
          appBar: AppBar(
            title: Text('文本组件的使用'),
          ),
          body: new Column(
            children: <Widget>[
              new Text('红色+ 黑色删除线—+25号',
                  style: new TextStyle(
                      color: const Color(0xffff0000),
                      decoration: TextDecoration.lineThrough,
                      decorationColor: const Color(0xff000000),
                      fontSize: 25.0)),
              new Text(' 橙色 ＋ 下划线 ＋24 号 ',
                  style: new TextStyle(
                      color: const Color(0xffff9900),
                      decoration: TextDecoration.lineThrough,
                      decorationColor: const Color(0xff000000),
                      fontSize: 25.0)),
              new Text('红色+褐色删除线—+25号+ 加粗',
                  style: new TextStyle(
                      color: const Color(0xffff0000),
                      decoration: TextDecoration.lineThrough,
                      decorationColor: const Color(0xff000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0)),
            ],
          ),
        ));
  }
}
