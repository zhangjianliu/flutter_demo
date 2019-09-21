import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '图标组件的使用',
      home: Scaffold(
        appBar: AppBar(
          title: Text('图标组件的使用'),
        ),
        body: new Column(
          children: <Widget>[
            new Icon(
              Icons.phone,
              color: Colors.lightGreen,
              size: 80.0,
            ),
            new Icon(
              Icons.playlist_add,
              color: Colors.lightGreen,
              size: 30.0,
            ),
            new Icon(
              Icons.access_alarm,
              color: Colors.lightGreen,
              size: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
