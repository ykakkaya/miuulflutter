import 'package:flutter/material.dart';

class ButtonTypes extends StatefulWidget {
  ButtonTypes({Key? key}) : super(key: key);

  @override
  _ButtonTypesState createState() => _ButtonTypesState();
}

class _ButtonTypesState extends State<ButtonTypes> {
  var selectedValue = <String>{"Flutter"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buton Tipleri"),
        centerTitle: true,
        elevation: 3,
      ),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Eleveted Butona basıldı");
              },
              onLongPress: () {
                print("uzun basıldı");
              },
              child: Text(
                "Eleveted Button",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
            ),

            TextButton(
              onPressed: () {
                print("Text button a tıklandı");
              },
              child: Text("Text Button Örneği"),
            ),

            OutlinedButton(
              onPressed: () {
                print("OutlinedButton a tıklandı");
              },
              child: Text("OutlinedButton Örneği"),
            ),

            IconButton(
              onPressed: () {
                print("IconButton a tıklandı");
              },
              icon: Icon(Icons.add_a_photo_rounded),
            ),

            SegmentedButton(
              segments: [
                ButtonSegment(value: "flutter", label: Text("Flutter")),
                ButtonSegment(value: "flutter", label: Text("Python")),
                ButtonSegment(value: "flutter", label: Text("Laravel")),
                ButtonSegment(value: "flutter", label: Text("Java")),
              ],
              selected: selectedValue,
              onSelectionChanged: (Set<String> p0) {
                setState(() {
                  selectedValue = p0;
                  print(selectedValue);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
