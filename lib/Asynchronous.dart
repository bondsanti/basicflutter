void main() async {
  //login
  print(await loginUser());
  print("ทำงานอื่นต่อไป");
}

Future<String> loginUser() async {
  //ดึงข้อมูล
  var user = await getUserDB();
  return user;
}

//ข้อมูลที่จะได้ในอนาคต ต้องรอ 10 วิ
Future<String> getUserDB() {
  return Future.delayed(Duration(seconds: 10), () => "Santi Dev");
}
