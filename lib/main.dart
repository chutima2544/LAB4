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
          child: Text("ยินดีต้อนรับ"),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
