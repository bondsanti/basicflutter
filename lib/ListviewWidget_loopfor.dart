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
        title: "โปรแกรมนับเลข",
        home: MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.green));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; //สร้าง State

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home จะแสดงผลในหน้านี้
      appBar: AppBar(
        title: const Text("เลือกเมนู"), //เมนูด้านบนแอพ
      ),
      body: Center(
        child: ListView(
          children: getData(10),
        ),
      ),
    );
  }

  //เตรียมข้อมูล
  List<Widget> getData(int count) {
    //กลุ่มข้อมูล Text Widget
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      var menu = Text(
        "รายการที่ ${i + 1}",
        style: TextStyle(fontSize: 20),
      );
      data.add(menu);
    }
    return data;
  }
}
