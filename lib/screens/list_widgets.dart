import 'package:flutter/material.dart';

class ListWidgets extends StatefulWidget {
  ListWidgets({Key? key}) : super(key: key);

  @override
  _ListWidgetsState createState() => _ListWidgetsState();
}

class _ListWidgetsState extends State<ListWidgets> {
  List<Map<String, dynamic>> contactList = [
    {"number": "123456"},
    {"name": "Nalan"},
    {"name": "Mine", "number": "123454"},
    {"name": "Volkan", "number": "654321"},
    {"name": "Müjde", "number": "123450"},
    {"name": "Mine", "number": "123454"},
    {"name": "Volkan", "number": "654321"},
    {"name": "Onur", "number": "123400"},
    {"name": "Mehmet Ali", "number": "123499"},
    {"name": "Ömür", "number": "123454"},
    {"name": "Eray", "number": "12345400"},
    {"name": "Handan", "number": "123451"},
    {"name": "Yakup ", "number": "123456"},
    {"name": "Nalan", "number": "1357924"},
    {"name": "Mine", "number": "123454"},
    {"name": "Volkan", "number": "654321"},
    {"name": "Müjde", "number": "123450"},
    {"name": "Onur", "number": "123400"},
    {"name": "Mehmet Ali", "number": "123499"},
    {"name": "Ömür", "number": "123454"},
    {"name": "Eray", "number": "12345400"},
    {"name": "Handan", "number": "123451"},
    {"name": "Yakup ", "number": "123456"},
    {"name": "Nalan", "number": "1357924"},
    {"name": "Mine", "number": "123454"},
    {"name": "Volkan", "number": "654321"},
    {"name": "Müjde", "number": "123450"},
    {"name": "Onur", "number": "123400"},
    {"name": "Mehmet Ali", "number": "123499"},
    {"name": "Ömür", "number": "123454"},
    {"name": "Eray", "number": "12345400"},
    {"name": "Handan", "number": "123451"},
    {"name": "Yakup ", "number": "123456"},
    {"name": "Nalan", "number": "1357924"},
    {"name": "Mine", "number": "123454"},
    {"name": "Volkan", "number": "654321"},
    {"name": "Müjde", "number": "123450"},
    {"name": "Onur", "number": "123400"},
    {"name": "Mehmet Ali", "number": "123499"},
    {"name": "Ömür", "number": "123454"},
    {"name": "Eray", "number": "12345400"},
    {"name": "Handan", "number": "123451"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact List-${contactList.length.toString()} kayıtlı kullanıcı",
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: contactList.length,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),

        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(Icons.person, color: Colors.yellow),
                  radius: 24,
                  backgroundColor: Colors.red,
                ),
                Text(contactList[index]["name"] ?? 'Hatalı veri Formatı'),
                Text(contactList[index]["number"] ?? "0000000000"),
                ElevatedButton(
                  onPressed: () {
                    print("Arama Yapılıyor");
                  },
                  child: Text(
                    "Arama Yap",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ],
            ),
          );
        },
      ),

      //contactListView(),
    );
  }

  ListView contactListView() {
    return ListView.builder(
      itemCount: contactList.length,
      itemBuilder: (context, index) {
        return contactListItem(index);
      },
    );
  }

  ListTile contactListItem(index) {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.person), radius: 24),
      title: Text(contactList[index]["name"] ?? 'Hatalı veri Formatı'),
      subtitle: Text(contactList[index]["number"] ?? "0000000000"),
      trailing: IconButton(
        icon: Icon(Icons.call, color: Colors.green),
        onPressed: () {
          print("Call pressed");
        },
      ),
    );
  }
}
