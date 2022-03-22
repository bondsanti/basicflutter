import 'package:flutter/material.dart';

//สร้าง container ต้นแบบ
class MoneyBox extends StatelessWidget {
  late String title; //รายการ
  late double amount; // จำนวนเงิน
  late Color color; //สีของกล่อง
  late double size; // ขนาด

  MoneyBox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(25)),
      height: size,
      padding: const EdgeInsets.all(15.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          title,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        Expanded(
          child: Text(amount.toString(),
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right),
        )
      ]),
    );
  }
}
