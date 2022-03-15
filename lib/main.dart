import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

//สร้าง Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        home: Scaffold(
          //home จะแสดงผลในหน้านี้
          appBar: AppBar(
            title: const Text("Hello flutter ครับ!!"), //เมนูด้านบนแอพ
          ),
          body: Center(
              child: Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2022/02/28/15/28/sea-7039471__340.jpg"),
          )),
        ),
        theme: ThemeData(primarySwatch: Colors.amber));
  }
}
