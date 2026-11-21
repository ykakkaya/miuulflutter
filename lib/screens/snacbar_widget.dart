import 'package:flutter/material.dart';

class SnacbarWidget extends StatefulWidget {
  SnacbarWidget({Key? key}) : super(key: key);

  @override
  _SnacbarWidgetState createState() => _SnacbarWidgetState();
}

class _SnacbarWidgetState extends State<SnacbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snacbar Widget")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Snacbar Widget",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.red,
                action: SnackBarAction(
                  label: "Veriyi Silmek istediğinizden Emin misiniz",
                  onPressed: () {
                    print("Veri Silindi");
                  },
                ),
              ),
            );
          },
          child: Text("Snacbar"),
        ),
      ),
    );
  }
}
