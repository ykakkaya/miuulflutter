import 'package:flutter/material.dart';
import 'package:miuulflutter/screens/green_page.dart';

class YellowPage extends StatefulWidget {
  YellowPage({Key? key}) : super(key: key);

  @override
  _YellowPageState createState() => _YellowPageState();
}

class _YellowPageState extends State<YellowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text("Sarı Sayfa")),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GreenPage()));
            }, child: Text("Yeşil Sayfaya Git")),
          ],
        ),
      ),
    );
  }
}
