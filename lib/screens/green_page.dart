import 'package:flutter/material.dart';

class GreenPage extends StatefulWidget {
  GreenPage({Key? key}) : super(key: key);

  @override
  _GreenPageState createState() => _GreenPageState();
}

class _GreenPageState extends State<GreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text("Yeşil Sayfa")),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Önceki Sayfaya Git")),
          ],
        ),
      ),
    );
  }
}
