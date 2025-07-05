import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxDialog.dart';
import 'package:getx/GetxSnackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Getx ব্যবহার করতে GetMaterialApp দিতে হবে।
      // GetMaterialApp এর বিতরে ডিপোল্ড ভাবে MaterialApp আছে, 
      //MaterialApp এর সকল কাজ করা যাবে GetMaterialApp এর বিতরে।
      // home: Home(),
      // debugShowCheckedModeBanner: false,
       initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/Home': (context) => Home(),
        '/GetxSnackbar': (context) => GetxSnackbar(),
        '/GetxDialog': (context) => GetxDialog(),

      },
    );
  }
}


class Home extends StatelessWidget {
  Home({super.key});


  final List<Map<String, String>> item = [
    {
      "title": "Snackbar",
      "route": "GetxSnackbar",
      "image": "https://user-images.githubusercontent.com/43790152/169772309-4b026300-30e9-492f-8c77-33500d566ca2.png",
    },
    {
      "title": "Getx Dialog",
      "route": "GetxDialog",
      "image": "https://i.sstatic.net/bMS0H.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: item.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75
          ), 
          itemBuilder: (BuildContext context, int index){
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/${item[index]["route"]}");
              },
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                        child: Image.network(
                          item[index]["image"] ?? "",
                          fit: BoxFit.cover,
                        ),
                      )
                    ),
                    Container(
                      // padding: const EdgeInsets.all(8),
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item[index]["title"] ?? "",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ), 
                    )
                  ],
                ), 
              ),
            );
          }),
      ),
    );
  }
}

