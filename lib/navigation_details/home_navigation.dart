import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is Home screen",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 8,
            ),
            RaisedButton(
              child: Text(
                "Next Page",
                style: TextStyle(fontSize: 18),
              ),
              color: Colors.lightBlue,
              textColor: Colors.white,
              onPressed: () {
                Get.toNamed("/nextScreen/1234");
              },
            ),
            SizedBox(
              height: 8,
            ),
            RaisedButton(
              child: Text(
                "Back to Main",
                style: TextStyle(fontSize: 18),
              ),
              color: Colors.lightBlue,
              textColor: Colors.white,
              onPressed: () {
                Get.back();
              },
            ),
            Text(
              "channel name is ${Get.parameters["channel"]} and content is  ${Get.parameters["content"]}",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
            Text(
              "channel name is ${Get.parameters["name"]} and content is  ${Get.parameters["age"]}",
              style: TextStyle(color: Colors.red, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
