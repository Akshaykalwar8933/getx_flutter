
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_uses/screens/class.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

 var newMovie = movie();
 var count = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child:
              Obx(
            () => Text(
              '${newMovie.moviename},${newMovie.tiketPrice}',
              style: TextStyle(fontSize: 25),
            ),
          )),
          ElevatedButton(
              onPressed: () {
                newMovie.moviename.value  = "KGF3";
                newMovie.tiketPrice.value = 650;
              },
              child: Text("Change Movie Name"))
        ],
      ),
    );
  }
}
