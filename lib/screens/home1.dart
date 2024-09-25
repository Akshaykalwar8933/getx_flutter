import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class Home1 extends StatelessWidget {
  Home1({super.key});

   var secondController = Get.put(firstController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using in getx"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetX<firstController>(
            //   init: firstController(),
            //     builder: (mycontroller)=>Text("${mycontroller.count}",style: TextStyle(fontSize: 40),),),

            Obx(()=> Text("${secondController.count}")),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                  Colors.blue
              ),
                onPressed: (){
               // var newContoller = Get.find<firstController>();
              // newContoller.incrementCount();
                  secondController.incrementCount();
              },
                child: Text("Increment Number"))
          ],
        ),
      ),
    );
  }
}
