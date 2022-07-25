import 'package:flutter/material.dart';
import 'FoodMenu.dart';

void main() {
  runApp(Myweb());
}

//สร้าง widget
class Myweb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Web",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //กลุ่มข้อมูล
  List<FoodMenu> menu=[
    FoodMenu("ข้าวผัด", "50","assets/images/pic1.jpg"),
    FoodMenu("ผัดไทย", "50","assets/images/pic2.jpg"),
    FoodMenu("โกโก้", "50","assets/images/pic3.jpg"),
    FoodMenu("ชานมไข่มุก", "50","assets/images/pic4.jpg")
  ];
  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("รายการอาหารและเครื่องดื่ม"),
        ),
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            FoodMenu food=menu[index];
          return ListTile(
            leading: Image.asset(food.img),
            title: Text(food.name,style: TextStyle(fontSize: 25),),
            subtitle: Text("ราคา "+food.price+" บาท"),
          );
        })
      );
  }
}
