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
        title: const Text("โปรแกรมนับเลข"), //เมนูด้านบนแอพ
      ),
      body: Center(
        child: Column(
          //เรียงลำดับ column ใน Widget
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "กดปุ่ม เพื่อเพิ่มจำนวนตัวเลข",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "$number",
              style: TextStyle(fontSize: 30),
            ),
            Text("Hello Flutter")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: Icon(Icons.add, size: 15),
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
