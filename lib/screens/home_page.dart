import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Merhaba Flutter"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          print("Butona tıklandı");
        },
        child: Icon(Icons.add, color: Colors.white),
      ),

      body: Center(child: Text("Merhaba Flutter")),
    );
  }
}
