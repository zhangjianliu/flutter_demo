import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'welcome to flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('welcome to Flutter'),
          ),
          body: Center(
            child: Text('hello World'),
          ),
        ));
  }
}
