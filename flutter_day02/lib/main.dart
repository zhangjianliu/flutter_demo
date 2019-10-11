import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: 'BottomNavigationBar 使用示例',
      home: new MyHomePage(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar 使用示例',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1; // 当前选中的索引
  final _widgetOptions = [
    Text('Index 0 : 信息'),
    Text('Index 1: 通讯录'),
    Text('Index 2: 发现'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('BottomNavigationBar 使用示例'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex), // 居中显示文本
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("发现")),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), title: Text("通讯录")),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("信息")),
        ],
        currentIndex: _selectedIndex, // 当前选中的索引
        fixedColor: Colors.deepOrange, // 选择中的颜色
        onTap: _onItemTapped, //按下处理逻辑
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
