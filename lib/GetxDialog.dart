import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        color: Colors.indigo,
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
              Get.defaultDialog(
                title: "Delete Alert",
                titlePadding: EdgeInsets.all(10),
                titleStyle: TextStyle(color: Colors.black),
        
                middleText: "Once Delete, You can't get it back",
                middleTextStyle: TextStyle(color: Colors.white),
        
                backgroundColor: Colors.green,
                radius: 10,
                
                textConfirm: "Confirm",
                confirmTextColor: Colors.white,
                onConfirm: (){
                  Get.back(closeOverlays: true);
                },
                
                textCancel: "Not Now",
                cancelTextColor: Colors.white,
                onCancel: (){
                  Get.back();
                },
        
                content: Column(
                  children: [
                    Text("This is content"),
                    Text("This is content"),
                    Text("This is content"),
        
                  ],
                )
              );
            }, 
            child: Text("Click Me")
          ),
        ),
      ),

    );
  }
}