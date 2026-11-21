import 'package:flutter/material.dart';
import 'package:miuulflutter/screens/container_widget.dart';
import 'package:miuulflutter/screens/home_page.dart';
import 'package:miuulflutter/screens/row_column_widget.dart';
import 'package:miuulflutter/screens/text_icon_placeholder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
     home: RowColumnWidget(),
    );
  }
}

