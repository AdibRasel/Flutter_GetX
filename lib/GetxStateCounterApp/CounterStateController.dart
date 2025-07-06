
import 'package:get/get.dart';

class CounterStateController  extends GetxController{

  var count = 0.obs;

  increament(){
    count = count+1;
  }


  decreament(){
    count = count-1;
  }





}