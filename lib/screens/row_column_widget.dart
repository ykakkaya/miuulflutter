import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Row ve Column Kullanımı",
          style: TextStyle(color: Colors.blueAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        spacing: 20,
        children: [
          Text("1.Elemanım"),
          Text("2.Elemanım"),
          FlutterLogo(size: 100),
          Row(
            spacing: 30,
            mainAxisAlignment: .center,
            children: [
              Container(height: 50, width: 50, color: Colors.red),
              Container(height: 150, width: 100, color: Colors.yellow),
              Container(height: 50, width: 50, color: Colors.blue),
            ],
          ),
          SizedBox(height: 50, width: 100),
          CircleAvatar(radius: 60, child: const Text('Miuul')),

          CircularProgressIndicator(),

          LinearProgressIndicator(),
        ],
      ),
    );
  }
}
