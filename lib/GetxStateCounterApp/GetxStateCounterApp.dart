import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxStateCounterApp/CounterStateController.dart';

class GetxStateCounterApp extends StatelessWidget {




  @override
  Widget build(BuildContext context) {

  final CounterStateController Counter = Get.put(CounterStateController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx State Counter App", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),


      body: Center(
        child: Obx(()=> Text("${Counter.count}"),)
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Counter.increament();
      //   },
      //   child: Icon(Icons.add),
      // ),


      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            onPressed: (){
              Counter.increament();
            },
            child: Icon(Icons.add),
            heroTag: 'fab1', 
          ),

          SizedBox(width: 10), 

          FloatingActionButton(
            onPressed: () {
              Counter.decreament();
            },
            child: Icon(Icons.remove),
            heroTag: 'fab2',
          ),
        ],
      ),



    );
  }
}