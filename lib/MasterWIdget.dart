import 'package:flutter/material.dart';
import 'MoneyBox.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

//สร้าง Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Drink Drink",
        home: MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.blueGrey));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //home จะแสดงผลในหน้านี้
        appBar: AppBar(
          title: const Text(
            "บัญชีของฉัน",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ), //เมนูด้านบนแอพ
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("ยอดคงเหลือ", 10000, Colors.blueAccent, 75),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายรับ", 5000, Colors.green, 55),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายจ่าย", 2000, Colors.red, 55),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ));
  }
}
