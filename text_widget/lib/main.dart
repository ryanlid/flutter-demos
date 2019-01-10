import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Widget'),
        ),
        body: Center(
          child: Text(
              'Flutter 是 Google 用以帮助开发者在 iOS 和 Android 两个平台开发高质量原生 UI 的移动 SDK。',
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 255, 0, 0),
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Colors.orangeAccent)),
        ),
      ),
    );
  }
}
