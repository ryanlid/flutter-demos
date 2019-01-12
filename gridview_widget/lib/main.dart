import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Gridview Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gridview Widget'),
        ),
      //   body: GridView.count(
      //     padding: EdgeInsets.all(10),
      //     // 每个子元素列之间的间距
      //     crossAxisSpacing: 50,
      //     // 每一行的列数
      //     crossAxisCount: 3,
      //     children: <Widget>[
      //      Container(
      //       child: Text('123'),
      //       decoration: BoxDecoration(
      //         border: Border.all(width: 3)
      //       ),
      //      ),
      //       Container(
      //       child: Text('456'),
      //       decoration: BoxDecoration(
      //         border: Border.all(width: 3)
      //       ),
      //      ),
      //       Container(
      //       child: Text('789'),
      //       decoration: BoxDecoration(
      //         border: Border.all(width: 3)
      //       ),
      //      )
      //     ],
      //   ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // 辅轴子元素个数 （列数）
          crossAxisCount: 3,
          // 主（横）轴上各子元素间的间距 (行与行之间)
          mainAxisSpacing: 2,
          // 辅（纵）轴上各子元素间的间距 (列与列之间)
          crossAxisSpacing: 5,
          // 子元素的长宽比
          childAspectRatio: 0.75,
        ),
        children: <Widget>[
          Image.network('https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541662397.webp'),
          Image.network('https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2544988187.webp'),
          Image.network('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2537158013.webp'),
          Image.network('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2543862640.jpg'),
          Image.network('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2535096871.jpg'),
          Image.network('https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2542848758.jpg'),
        ],
      ),
      ),
    );
  }
}