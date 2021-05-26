import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part1/reactiveStatemanagement/my_controller.dart';

class reactiverHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Entire class observable
            GetX<MyController>(
              init: MyController(),
              builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  child: Text("Icrement"),
                  onPressed: () {
                    Get.find<MyController>().increment();
                  },
                ),
                RaisedButton(
                  child: Text("Icrement"),
                  onPressed: () {
                    Get.find<MyController>().decrement();
                  },
                ),
              ],
            )

            ////Individuals variables RX
          ],
        ),
      ),
    );
  }
}
