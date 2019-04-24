import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = '自定义主题';

    return new MaterialApp(
        title: appName,
        theme: ThemeData(
          // 应用程序整体主题的亮度
          brightness: Brightness.light,
          // APP 主要部分的背景色
          primaryColor: Colors.lightGreen,
          // 前景色（文本、按钮等）
          accentColor: Colors.orange[600],
        ),
        home: new MyHomePage(title: appName));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Container(
          // 获取主题的 accentColor
          color: Theme.of(context).accentColor,
          child: Text(
            '带背景颜色的文本组件',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      floatingActionButton: Theme(
        // 使用 copyWith 的方式获取 accentColor
        data: Theme.of(context).copyWith(accentColor: Colors.grey),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.computer),
        ),
      ),
    );
  }
}
