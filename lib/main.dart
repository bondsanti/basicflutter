import 'package:basicflutter/ApiExchangRate.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'MoneyRateBox.dart';

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
        theme: ThemeData(primarySwatch: Colors.indigo));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ApiExchangRate _dataFromAPI;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getExchangeRate();
  }

  Future<ApiExchangRate> getExchangeRate() async {
    var url = Uri.parse('https://api.exchangerate-api.com/v4/latest/USD');
    var response = await http.get(url);

    _dataFromAPI = apiExchangRateFromJson(response.body);
    return _dataFromAPI;
  }

  @override
  Widget build(BuildContext context) {
    print("เรียกใช้งาน build");
    return Scaffold(
        //home จะแสดงผลในหน้านี้
        appBar: AppBar(
          title: const Text(
            "อัตราแลกเปลี่ยนสกุลเงิน",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ), //เมนูด้านบนแอพ
        ),
        body: FutureBuilder(
            future: getExchangeRate(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              //ดึงข้อมูลจาก getExchangeRate มาครบเรียบร้อย จะให้ทำอะไร
              if (snapshot.connectionState == ConnectionState.done) {
                var result = snapshot.data;

                // return ListView(
                //   children: [
                //     ListTile(
                //       title: Text(result.base),
                //     ),
                //     ListTile(
                //         title: Text(
                //             "USD TO THB : " + result.rates["THB"].toString())),
                //     ListTile(
                //         title: Text(
                //             "USD TO GBP : " + result.rates["GBP"].toString())),
                //     ListTile(
                //         title: Text(
                //             "USD TO EUR : " + result.rates["EUR"].toString()))
                //   ],
                // );
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      MoneyBox("1 USD => THB", result.rates["THB"],
                          Colors.blueAccent, 55),
                      SizedBox(
                        height: 5,
                      ),
                      MoneyBox("1 USD => GBP", result.rates["GBP"],
                          Colors.green, 55),
                      SizedBox(
                        height: 5,
                      ),
                      MoneyBox(
                          "1 USD => EUR", result.rates["EUR"], Colors.red, 55),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                );
              }
              return LinearProgressIndicator();
            }));
  }

  void getDataExchangeRateFromJson(str) {}
}
