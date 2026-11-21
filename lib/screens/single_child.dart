import 'package:flutter/material.dart';

class SingleChild extends StatefulWidget {
  SingleChild({Key? key}) : super(key: key);

  @override
  _SingleChildState createState() => _SingleChildState();
}

class _SingleChildState extends State<SingleChild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SingleChild Widget Scroll")),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(color: Colors.red, width: 100, height: 100),
            Container(color: Colors.black, width: 100, height: 100),
            Container(color: Colors.yellow, width: 100, height: 100),
            Container(color: Colors.blue, width: 100, height: 100),
            Container(color: Colors.cyan, width: 100, height: 100),
            Divider(
              color: Colors.pink,
              thickness: 20,
              indent: 5,
              endIndent: 20,
            ),
            Container(color: Colors.red, width: 100, height: 100),
            Container(color: Colors.black, width: 100, height: 100),
            Container(color: Colors.yellow, width: 100, height: 100),
            Container(color: Colors.blue, width: 100, height: 100),
            Container(color: Colors.cyan, width: 100, height: 100),
            Container(color: Colors.red, width: 100, height: 100),
            Container(color: Colors.black, width: 100, height: 100),
            Container(color: Colors.yellow, width: 100, height: 100),
            Container(color: Colors.blue, width: 100, height: 100),
            Container(color: Colors.cyan, width: 100, height: 100),
            Container(color: Colors.red, width: 100, height: 100),
            Container(color: Colors.black, width: 100, height: 100),
            Container(color: Colors.yellow, width: 100, height: 100),
            Container(color: Colors.blue, width: 100, height: 100),
            Container(color: Colors.cyan, width: 100, height: 100),
          ],
        ),
      ),
    );
  }
}
