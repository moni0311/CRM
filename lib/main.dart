import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'API.dart';
import 'AUTO Complete/search screen.dart';
import 'Table.dart';
import 'Table2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: api(),
    );
  }
}

