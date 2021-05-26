import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part1/staatemanagementGetX/student.dart';
import 'package:getx_part1/staatemanagementGetX/student2.dart';

class StateHome extends StatelessWidget {
  var student = Student();

  final student2 =
      Student2(email: "masrafianam@gmail.com", id: 2016000000185).obs;

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
                  "Name is ${student2.value.email}",
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              child: Text("Upper"),
              onPressed: () {
                //student.name.value = student.name.value.toUpperCase();

                student2.update((student2) {
                  student2.email = student2.email.toString().toUpperCase();
                });
              },
            ),
            SizedBox(
              height: 40,
            ),

            ////Individuals variables RX
            Obx(() => Text(
                  "Name is ${student.name.value}",
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
                child: Text("Upper"),
                onPressed: () {
                  student.name.value = student.name.value.toUpperCase();
                })
          ],
        ),
      ),
    );
  }
}
