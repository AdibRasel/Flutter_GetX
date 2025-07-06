import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxBottomSheet extends StatelessWidget {
  const GetxBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Bottom Sheet", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        color: Colors.orange,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, 
              foregroundColor: Colors.white, 
              elevation: 5, 
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: (){
              Get.bottomSheet(
                Container(
                  height: 200,
                  color: Colors.green,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("This is Bottom Sheet"),
                      ElevatedButton(
                        onPressed: (){
                          Get.back(closeOverlays: true);
                        },
                        child: Text("Close"))
                    ],
                  ),
                ),
                // enableDrag: false, 
                // 🛑 নিচের দিকে টেনে BottomSheet বন্ধ করা যাবে না
                // isDismissible: false, 
                // 🛑 বাইরে কোথাও ট্যাপ করলে BottomSheet বন্ধ হবে না
                // barrierColor: Colors.red, 
                // 🔴 ব্যাকগ্রাউন্ডে লাল রঙ দেখাবে যখন BottomSheet খোলা থাকবে
              );
            }, 
            child: Text("Click Me")
          ),
        ),
      ),



    );
  }
}