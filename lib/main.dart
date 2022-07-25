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
  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.blue, 
                    borderRadius: BorderRadius.circular(10)
                    ),
                height: 100,
                child: Row(
                  children: [
                    Text("ยอดคงเหลือ"),
                    Text("2000")
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green, 
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
              )
            ],
          ),
        ));
  }
}
