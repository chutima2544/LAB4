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
    FoodMenu("ข้าวผัด", "50"),
    FoodMenu("ผัดไทย", "50"),
    FoodMenu("ข้าวต้ม", "50"),
    FoodMenu("ข้าวหน้าหมูทอด", "50"),
  ];
  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("รายการอาหาร"),
        ),
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            FoodMenu food=menu[index];
          return ListTile(
            title: Text(food.name,style: TextStyle(fontSize: 25),),
            subtitle: Text("ราคา "+food.price+" บาท"),
          );
        })
      );
  }
}
