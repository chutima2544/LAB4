import 'package:flutter/material.dart';
import 'MoneyBox.dart';

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
  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เครื่องเขียนหรรษา",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("ดินสอ", 20, Colors.blue, 100),
              SizedBox(height: 10,),
              MoneyBox("ปากกา", 30, Colors.green, 100),
              SizedBox(height: 10,),
              MoneyBox("ยางลบ", 10, Colors.red, 100),
              SizedBox(height: 10,),
              MoneyBox("สมุด", 15, Colors.purple, 100),
              SizedBox(height: 10,),
              MoneyBox("สมุดระบายสี", 20, Colors.purple, 100),
              SizedBox(height: 10,),
              MoneyBox("กบเหลา", 15, Colors.blue, 100),
            ],
          ),
        ));
  }
}
