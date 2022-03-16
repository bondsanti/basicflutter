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
                child: Column(
              //เรียงลำดับ column ใน Widget
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("สวัสดีชาวโลก"),
                Text("Hello dart"),
                Text("Hello Flutter")
              ],
            ))),
        theme: ThemeData(primarySwatch: Colors.amber));
  }
}
