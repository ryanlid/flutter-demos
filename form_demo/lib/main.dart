import 'package:flutter/material.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 全局Key用来获取表单组件
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  String userName;
  String password;
  void login() {
    // 获取当前 form 的状态
    var loginForm = loginKey.currentState;
    // 验证表单
    if (loginForm.validate()) {
      loginForm.save();
      print('username:' + userName + ' password:' + password);
    }
  }

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Form 表单示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text('表单示例'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              child: Form(
                key: loginKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '请输入用户名',
                      ),
                      onSaved: (value) {
                        userName = value;
                      },
                      onFieldSubmitted: (value) {},
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: '请输入密码123'),
                      obscureText: true,
                      // 验证表单的方法
                      validator: (value) {
                        return value.length < 6 ? "密码长度不够6位" : null;
                      },
                      onSaved: (value) {
                        password = value;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 340,
              height: 42,
              child: RaisedButton(
                onPressed: login,
                child: Text('登陆', style: TextStyle(fontSize: 18)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
