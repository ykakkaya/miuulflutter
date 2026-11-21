import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});
  final appBarText = "Container Widget";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarText)),
      body: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Container(
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.amber,
            border: BoxBorder.all(color: Colors.black, width: 10),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.red],
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
            ),
          ),
        ),
      ),
    );
  }
}
