import 'package:flutter/material.dart';

class GetxDialog extends StatelessWidget {
  const GetxDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Dialog", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),


      body: Container(
        child: Text("Getx Dialog"),
      ),

    );
  }
}