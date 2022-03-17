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
        title: "สั่งได้เลย!",
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
        body: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  "เมนูที่ ${index + 1}",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("หัวข้อย้อย ${index + 1}"),
              );
            }));
  }
}
