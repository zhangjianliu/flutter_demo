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
        child: new IconButton(
          icon: Icon(Icons.volume_up, size: 48.0, color: Colors.lightGreen),
          tooltip: '按下操作',
          onPressed: () {
            print('按下操作');
          },
        ),
      ),
    );
  }
}
