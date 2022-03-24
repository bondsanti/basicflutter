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
  int number = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("เรียกใช้งาน initState");
  }

  @override
  Widget build(BuildContext context) {
    print("เรียกใช้งาน build");
    return Scaffold(
      //home จะแสดงผลในหน้านี้
      appBar: AppBar(
        title: const Text(
          "วงจรการทำงานของ StateWidget",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ), //เมนูด้านบนแอพ
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 35),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Addnumber,
        child: Icon(Icons.add, size: 15),
      ),
    );
  }

  void Addnumber() {
    setState(() {
      number++;
    });
  }
}
