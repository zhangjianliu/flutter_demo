import 'package:flutter/material.dart';

void main() => runApp(new LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 全局的key用来获取form 表单
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();
  // 用户名

  String userName;

  // 密码
  String password;

  void login() {
    // 读取当前的Form 状态

    var loginForm = loginKey.currentState;

    // 验证form 表单
    if (loginForm.validate()) {
      loginForm.save();
      print('username:' + userName + 'password:' + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Form 表单示例',
      home: Scaffold(
        appBar: AppBar(
          title: new Text('Form 表单示例'),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(10),
              child: new Form(
                key: loginKey,
                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(labelText: '请输入用户名:'),
                      onSaved: (value) {
                        userName = value;
                      },
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(labelText: '请输入密码:'),
                      obscureText: true,
                      onSaved: (value) {
                        password = value;
                      },
                      validator: (value) {
                        return value.length < 6 ? '密码长度不够6位' : null;
                      },
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
            new SizedBox(
              width: 340.0,
              height: 42.0,
              child: new RaisedButton(
                onPressed: login,
                child: new Text(
                  '登录',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
