import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '列表组件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('列表组件'),
        ),
        body: new ListView(
          children: <Widget>[
            ListTile(
              // 添加图标
              leading: new Icon(Icons.phone),
              // 添加文本
              title: Text('phone'),
            ),
            ListTile(
              // 添加图标
              leading: new Icon(Icons.access_alarm),
              // 添加文本
              title: Text('access_alarm'),
            ),
            ListTile(
              // 添加图标
              leading: new Icon(Icons.backspace),
              // 添加文本
              title: Text('backspace'),
            ),
            ListTile(
              // 添加图标
              leading: new Icon(Icons.calendar_today),
              // 添加文本
              title: Text('calendar_today'),
            ),
            ListTile(
              // 添加图标
              leading: new Icon(Icons.dashboard),
              // 添加文本
              title: Text('dashboard'),
            ),
            ListTile(
              // 添加图标
              leading: new Icon(Icons.edit),
              // 添加文本
              title: Text('edit'),
            ),
          ],
        ),
      ),
    );
  }
}
