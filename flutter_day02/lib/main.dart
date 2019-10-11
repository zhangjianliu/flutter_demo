import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: 'AppBar 应用按钮示例',
      home: new LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('AppBar 应用按钮示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: '搜错',
            onPressed: () {
              print('搜索');
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            tooltip: '添加',
            onPressed: () {
              print('添加');
            },
          )
        ],
      ),
      body: Center(
        child: Text('AppBar 应用按钮示例'),
      ),
    );
  }
}
