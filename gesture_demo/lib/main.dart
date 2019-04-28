import 'package:flutter/material.dart';

// void mian()=>runApp(myApp());

void main() => runApp(MaterialApp(
      title: '按下手势',
      home: MyApp(),
    ));

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(
          content: Text('单击'),
          duration: Duration(seconds: 1),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      onLongPress: () {
        final snackbar = SnackBar(
          content: Text('长按'),
          duration: Duration(seconds: 1),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      onDoubleTap: () {
        final snackbar = SnackBar(
          content: Text('双击'),
          duration: Duration(seconds: 1),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Text('按下测试'),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('按下测试 demo')),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}
