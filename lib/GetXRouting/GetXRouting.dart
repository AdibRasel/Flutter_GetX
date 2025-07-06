import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'About.dart';
import 'Contact.dart';
import 'Service.dart';

class GetXRouting extends StatelessWidget {
  const GetXRouting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Routing Methods", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [

            const Text("🔁 Page Navigation Methods", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

            ElevatedButton(
              onPressed: () => Get.to(const Service()),
              child: const Text("Service > Get.to → আগের পেইজ রেখে নতুনটিতে যায়"),
            ),

            ElevatedButton(
              onPressed: () => Get.off(const Contact()),
              child: const Text("Contact > Get.off → আগের পেইজ বাদ দিয়ে নতুনটিতে যায়"),
            ),

            ElevatedButton(
              onPressed: () => Get.offAll(const About()),
              child: const Text("About > Get.offAll → সব পেইজ বাদ দিয়ে নতুনটিতে যায়"),
            ),

            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text("Back > Get.back → আগের পেইজে ফেরত যায়"),
            ),

            const SizedBox(height: 30),
            const Text("🔗 Named Routes", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

            ElevatedButton(
              onPressed: () => Get.toNamed("/GetxSnackbar"),
              child: const Text("Getx Snackbar > Get.toNamed → আগের পেইজ রেখে যায়"),
            ),

            ElevatedButton(
              onPressed: () => Get.offNamed("/GetxDialog"),
              child: const Text("Getx Dialog > Get.offNamed → আগের পেইজ বাদ দিয়ে যায়"),
            ),

            ElevatedButton(
              onPressed: () => Get.offAllNamed("/GetxBottomSheet"),
              child: const Text("Getx Bottom Sheet > Get.offAllNamed → সব পেইজ বাদ দিয়ে যায়"),
            ),

            ElevatedButton(
              onPressed: () => Get.toNamed("/PrimarySchool"),
              child: const Text("Primary School > Get.toNamed → আগের পেইজ রেখে যায়"),
            ),

            ElevatedButton(
              onPressed: () => Get.toNamed("/Sahapur"),
              child: const Text("Sahapur > Get.toNamed → আগের পেইজ রেখে যায়"),
            ),

            ElevatedButton(
              onPressed: () => Get.toNamed("/School"),
              child: const Text("School > Get.toNamed → আগের পেইজ রেখে যায়"),
            ),

            ElevatedButton(
              onPressed: () => Get.toNamed("/SecondarySchool"),
              child: const Text("Secondary School > Get.toNamed → আগের পেইজ রেখে যায়"),
            ),
          ],
        ),
      ),
    );
  }
}
