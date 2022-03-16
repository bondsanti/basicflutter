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
    // ListWideget
    List<Widget> data = [];
    data.add(Text(
      "กดปุ่ม เพื่อเพิ่มจำนวนตัวเลข",
      style: TextStyle(fontSize: 15),
    ));
    data.add(Text(
      number.toString(),
      style: TextStyle(fontSize: 30),
    ));

    return Scaffold(
      //home จะแสดงผลในหน้านี้
      appBar: AppBar(
        title: const Text("โปรแกรมนับเลข"), //เมนูด้านบนแอพ
      ),
      body: Center(
        child: Column(
          //เรียงลำดับ column ใน Widget
          mainAxisAlignment: MainAxisAlignment.center,
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: const Icon(Icons.add, size: 15),
      ),
    );
  }

  //evenfuntion
  void addNumber() {
    setState(() {
      number++;
    });
  }
}
