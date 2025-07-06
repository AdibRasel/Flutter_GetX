import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetxStorage extends StatelessWidget {
  const GetxStorage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Storage", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          ElevatedButton(
            onPressed: () {
              GetStorage().write("Name", "Rabbil Hasan"); 
              // 🔹 ডাটাকে লোকালি সেভ করছে (key: "Name", value: "Rabbil Hasan")
            }, 
            child: Text("Write Data"),
          ),

          ElevatedButton(
            onPressed: () {
              String? myName = GetStorage().read("Name"); 
              // 🔹 লোকাল স্টোরেজ থেকে "Name" key-এর ডাটা পড়ছে

              if (myName != null) {
                Get.snackbar(myName, "This is my name"); 
                // 🔹 যদি ডাটা থাকে তাহলে snackbar দেখাবে
              } else {
                Get.snackbar("No Name Found", "Storage is empty"); 
                // 🔹 যদি ডাটা না থাকে তাহলে fallback snackbar দেখাবে
              }
            },
            child: Text("Read Data"),
          ),

          ElevatedButton(
            onPressed: () {
              GetStorage().remove("Name"); 
              // 🔹 লোকাল স্টোরেজ থেকে "Name" key-এর ডাটা মুছে ফেলছে
            }, 
            child: Text("Delete Data"),
          ),

          ],
        ),

      ),



    );
  }
}