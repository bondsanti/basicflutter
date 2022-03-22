import 'package:flutter/material.dart';
import 'CafeMenu.dart';
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
  List<CafeMenu> menu = [
    CafeMenu("เอสเปรสโซ่", "65",
        "assets/image/a9237db1112a4bc09be59b49988c74ba.png"),
    CafeMenu("แบล็คคอฟฟี่", "55",
        "assets/image/e8fe5eb6cda2479493cd3e52fa84ba78.png"),
    CafeMenu(
        "คาปูชิโน่", "65", "assets/image/bef840806a5d4a1bad860b6940843976.png"),
    CafeMenu(
        "ชาเขียวนม", "60", "assets/image/0c1090e332a74b5db5ad5495c08bd229.png"),
    CafeMenu(
        "ชาไทย", "60", "assets/image/0a8707642c7740cd83d203b823b9344c.png"),
  ];

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
