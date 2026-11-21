import 'package:flutter/material.dart';
import 'package:miuulflutter/screens/yellow_page.dart';

class RedPage extends StatefulWidget {
  RedPage({Key? key}) : super(key: key);

  @override
  _RedPageState createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Text("Kırmızı Sayfa")),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(onPressed: () {
                 Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context)=>YellowPage()),
                  (route)=>false);

            }, child: Text("Sarı Sayfaya Git")),
          ],
        ),
      ),
    );
  }
}
