import 'package:flutter/material.dart';

class TableApp extends StatefulWidget {
  const TableApp({Key? key}) : super(key: key);

  @override
  _TableAppState createState() => _TableAppState();
}

class _TableAppState extends State<TableApp> {
  int tableNumber = 0;
  int times = 0;
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Table"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 300,

              child: TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    tableNumber = int.tryParse(value) ?? 0;
                  });
                },
                decoration: InputDecoration(
                  labelText: "Enter Table",
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Times"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  times = int.tryParse(value) ?? 0;
                });
              },
              decoration: InputDecoration(
                labelText: "Enter Times",
                hintStyle: TextStyle(color: Colors.black12),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  result = generateTable();
                });
              },
              child: Text("Submit"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(result),
          ),
        ],
      ),
    );
  }

  String generateTable() {
    String result = '';
    for (int i = 1; i <= times; i++) {
      result += '$tableNumber x $i = ${tableNumber * i}\n';
    }
    return result;
  }
}

void main() {
  runApp(MaterialApp(
    home: TableApp(),
  ));
}
