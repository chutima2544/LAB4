import 'package:flutter/material.dart';

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
  int number = 0; //การสร้าง state

  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("รายการอาหาร"),
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("เมนูที่ ${index+1}"),
          );
        }));
  }
}
