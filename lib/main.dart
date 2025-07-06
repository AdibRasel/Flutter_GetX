import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetXRouting/About.dart';
import 'package:getx/GetXRouting/Contact.dart';
import 'package:getx/GetXRouting/GetXRouting.dart';
import 'package:getx/GetXRouting/PrimarySchool.dart';
import 'package:getx/GetXRouting/Sahapur.dart';
import 'package:getx/GetXRouting/School.dart';
import 'package:getx/GetXRouting/SecondaryScrool.dart';
import 'package:getx/GetXRouting/Service.dart';
import 'package:getx/GetxBottomSheet.dart';
import 'package:getx/GetxDialog.dart';
import 'package:getx/GetxSnackbar.dart';
import 'package:getx/GetxStateCounterApp/GetxStateCounterApp.dart';
import 'package:getx/GetxStorage.dart';

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
      getPages: [

        GetPage(name: "/", page: ()=> Home()),

        GetPage(name: "/GetxSnackbar", page: ()=> GetxSnackbar(), transition: Transition.circularReveal),
        GetPage(name: "/GetxDialog", page: ()=> GetxDialog(), transition: Transition.cupertino),
        GetPage(name: "/GetxBottomSheet", page: ()=> GetxBottomSheet(), transition: Transition.cupertinoDialog),
        GetPage(name: "/GetXRouting", page: ()=> GetXRouting(), transition: Transition.fade),

        GetPage(name: "/About", page: ()=> About(), transition: Transition.leftToRight),
        GetPage(name: "/Contact", page: ()=> Contact(), transition: Transition.rightToLeft),
        GetPage(name: "/Service", page: ()=> Service(), transition: Transition.zoom),

        GetPage(name: "/PrimarySchool", page: ()=> PrimarySchool(), transition: Transition.native),
        GetPage(name: "/Sahapur", page: ()=> Sahapur(), transition: Transition.rightToLeftWithFade),
        GetPage(name: "/School", page: ()=> School(), transition: Transition.topLevel),
        GetPage(name: "/SecondaryScrool", page: ()=> SecondaryScrool(), transition: Transition.upToDown),

        GetPage(name: "/GetxStorage", page: ()=> GetxStorage(), transition: Transition.rightToLeft),
        GetPage(name: "/GetxStateCounterApp", page: ()=> GetxStateCounterApp(), transition: Transition.leftToRight),

      ],
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
    },
    {
      "title": "Getx Bottom Sheet",
      "route": "GetxBottomSheet",
      "image": "https://i.sstatic.net/Rbcfr.png",
    },
    {
      "title": "GetX Routing",
      "route": "GetXRouting",
      "image": "https://i.ytimg.com/vi/Fj1xoZgtEXM/sddefault.jpg",
    },
    {
      "title": "Getx Storage",
      "route": "GetxStorage",
      "image": "https://miro.medium.com/v2/resize:fit:1080/1*XL7zxkTmfk-5MUf-QG1gBw.png",
    },
    {
      "title": "Getx State Counter App",
      "route": "GetxStateCounterApp",
      "image": "https://play-lh.googleusercontent.com/OjJL9T6eT8bsWot5Kt1lrqy8zMbP35hrJSnemcZuXq1x-30HanNvWDI--MhNlAna4w",
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

