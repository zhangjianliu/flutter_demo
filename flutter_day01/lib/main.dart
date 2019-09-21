import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: '图标按钮组件示例',
      home: new LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('图标按钮组件使用示例'),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            print('按下操作');
          },
          child: new Text('RaisedButton组件'),
        ),
      ),
    );
  }
}
