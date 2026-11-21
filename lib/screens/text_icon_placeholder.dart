import 'package:flutter/material.dart';

class TextIconPlaceholder extends StatelessWidget {
  const new({super.key});
  final double iconSize = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Icon Placeholder"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Placeholder(
        child: Container(height: 20, width: 40),
      ),

      //myIconWidget(),

      //myTextWidget(),
    );
  }

  Icon myIconWidget() =>
      Icon(Icons.person_2_outlined, size: iconSize, color: Colors.cyan);

  Text myTextWidget() {
    return Text(
      "Bu bir test uygulamasıdır.",
      style: TextStyle(
        color: Colors.deepOrange,
        fontSize: 24,
        letterSpacing: 10,
        wordSpacing: 15,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
