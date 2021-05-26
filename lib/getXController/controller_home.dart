import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part1/getXController/my_controller.dart';
import 'package:getx_part1/getXController/my_controller2.dart';
import 'package:getx_part1/staatemanagementGetX/student.dart';
import 'package:getx_part1/staatemanagementGetX/student2.dart';

class ControllerHome extends StatelessWidget {
  MyController myController = Get.put(MyController());

  MyController2 myController2 = Get.put(MyController2());

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
            Obx(() => Text(
                  "Name is ${myController2.student2.value.email}",
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              child: Text("Upper"),
              onPressed: () {
                //student.name.value = student.name.value.toUpperCase();

                myController2.convert();
              },
            ),
            SizedBox(
              height: 40,
            ),

            ////Individuals variables RX
            Obx(() => Text(
                  "Name is ${myController.student.name}",
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
                child: Text("Upper"),
                onPressed: () {
                  myController.convertToUpperCase();
                })
          ],
        ),
      ),
    );
  }
}
