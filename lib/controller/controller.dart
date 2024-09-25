import 'package:get/get.dart';

class firstController extends GetxController{

  var count = 0.obs;

  incrementCount(){
    count++;
  }
}