import 'package:get/get.dart';
import 'package:flutter/material.dart';

class GetxSnackbar extends StatelessWidget {
  const GetxSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Getx"),
        backgroundColor: Colors.blue,

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
              onPressed: () {
                // 👉 Get.snackbar ব্যবহার করে একটি কাস্টম স্ন্যাকবার দেখানো হচ্ছে
                Get.snackbar(
                  "Title", // 🔹 স্ন্যাকবারের টাইটেল
                  "message", // 🔹 স্ন্যাকবারের মেসেজ
                  snackPosition: SnackPosition.BOTTOM, // 🔹 স্ক্রিনের নিচে স্ন্যাকবার দেখাবে (TOP ও দেওয়া যায়)
                  showProgressIndicator: true, // 🔹 একটি লোডিং progress bar দেখাবে স্ন্যাকবারে
                  backgroundColor: Colors.blueAccent, // 🔹 ব্যাকগ্রাউন্ড কালার সেট করা হয়েছে
                  colorText: Colors.white, // 🔹 টেক্সটের কালার সাদা রাখা হয়েছে
                  borderRadius: 5, // 🔹 স্ন্যাকবারের কোণের কার্নার গোলাকৃতি
                  margin: EdgeInsets.all(20), // 🔹 স্ক্রিনের চারদিকে margin
                  padding: EdgeInsets.all(20), // 🔹 স্ন্যাকবারের ভিতরের content padding
                  icon: Icon(Icons.arrow_right, color: Colors.white,), // 🔹 আইকন দেখানো হয়েছে টেক্সটের পাশে
                  isDismissible: true, // 🔹 ব্যবহারকারী স্ন্যাকবার swipe করে বন্ধ করতে পারবে
                  duration: Duration(seconds: 10), // 🔹 ১০ সেকেন্ড পর্যন্ত স্ন্যাকবার থাকবে
                  animationDuration: Duration(milliseconds: 200), // 🔹 fade/slide animation কত দ্রুত হবে
                );
              },
              child: Text("Click Me"),
            )




          ],
        ),
      )

    );
  }
}