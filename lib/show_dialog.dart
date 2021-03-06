import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDiolog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Show Dialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Show Dialog"),
                onPressed: () {
                  //Get.defaultDialog();
                  Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(fontSize: 25),
                      middleText: "This is middle text",
                      middleTextStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.purple,
                      radius: 80,
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(child: Text("Data Loading"))
                        ],
                      ),
                      textCancel: "Cancel",
                      cancelTextColor: Colors.white,
                      textConfirm: "Confirm",
                      onCancel: () {},
                      onConfirm: () {},
                      buttonColor: Colors.green,
                      cancel: Text(
                        "Cancels",
                        style: TextStyle(color: Colors.white),
                      ),
                      confirm: Text(
                        "Confirms",
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        RaisedButton(
                          child: Text("Action-1"),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        RaisedButton(
                          child: Text("Action-2"),
                          onPressed: () {},
                        )
                      ],
                      barrierDismissible: false);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
