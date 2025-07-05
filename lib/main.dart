import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Getx bebohar korte GetMaterialApp dite hobe
      // GetMaterialApp er bitore by defuld a MaterialApp ache.
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

