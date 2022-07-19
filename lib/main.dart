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
      home: Scaffold(
        appBar: AppBar(
          title: Text("CHUBEAM"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("ยินดีต้อนรับ"),
              Text("หน้าหลัก"),
              Text("เนื้อหา"),
            ],
          )
          ),
        ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
