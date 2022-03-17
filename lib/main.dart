import 'package:flutter/material.dart';
import 'CafeMenu.dart';

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
          title: const Text("เลือกเมนู"), //เมนูด้านบนแอพ
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              CafeMenu items = menu[index];
              return ListTile(
                leading: Image.asset(items.img),
                title: Text(
                  items.name,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("ราคา " + items.price + " บาท"),
                onTap: () {
                  print("เลือก = " + items.name);
                },
              );
            }));
  }
}
