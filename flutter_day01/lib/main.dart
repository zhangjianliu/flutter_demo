import 'package:flutter/material.dart';

void main() =>
    runApp(new MyApp(items: new List<String>.generate(100, (i) => 'Item $i')));

class MyApp extends StatelessWidget {
  // 列表数据采集
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final title = '长列表示例 ';
    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Container(
            child: ListView.builder(
                //列表长度
                itemCount: items.length,
                // 列表项构造器
                itemBuilder: (context, index) {
                  return new ListTile(
                      leading: new Icon(Icons.phone),
                      title: new Text('${items[index]}'));
                }),
          ),
        ));
  }
}
