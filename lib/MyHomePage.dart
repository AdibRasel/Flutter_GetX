import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Getx"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Flutter Getx",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: (){

                Get.snackbar(


                  "Title", "message",

                  snackPosition: SnackPosition.BOTTOM,
                  showProgressIndicator: true,
                  backgroundColor: Colors.blueAccent,
                  colorText: Colors.white,
                  borderRadius: 5,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  icon: Icon(Icons.arrow_right, color: Colors.white,),
                  isDismissible: true,
                  duration: Duration(seconds: 10),
                  animationDuration: Duration(milliseconds: 200)


                );
                



              }, 
              child: Text("Click Me")
            )
          ],
        ),
      )

    );
  }
}