import 'package:flutter/material.dart';

class multi extends StatefulWidget {
  const multi({Key? key}) : super(key: key);

  @override
  State<multi> createState() => _multiState();
}

class _multiState extends State<multi> {
  final text1 = TextEditingController();
  final text2 = TextEditingController();
  String tableValue = '';
  String timesValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Table"),
          ),
          TextFormField(
            controller: text1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Times"),
          ),
          TextFormField(
            controller: text2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  tableValue = text1.text;
                  timesValue = text2.text;
                });
                print("table $tableValue, times $timesValue");
              },
              child: Text("Submit"),
            ),
          ),
          Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(border: Border.all()),
            child: Center(
              child: Text(
                "Table Value: $tableValue",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
