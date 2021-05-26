import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagementCount extends StatelessWidget {
  var count = 0.obs;
  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Count value is $count",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("Increment"),
                    onPressed: () {
                      increment();
                    },
                  ),
                  RaisedButton(
                    child: Text("Increment"),
                    onPressed: () {
                      decrement();
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
