import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part1/reactiveStatemanagement/reactive_home.dart';
import 'package:getx_part1/staatemanagementGetX/state_home.dart';
import 'package:getx_part1/statemanagement_reactive/state_management_count.dart';

import 'getXController/controller_home.dart';
import 'navigation/route_navigation.dart';

void main() {
  runApp(reactiverHome());
}

class Snackbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Go to Home"),
                onPressed: () {
                  Get.snackbar(
                    "Snackbar Title", "This will be Snackbar MessaGE",
                    snackPosition: SnackPosition.BOTTOM,
                    // titleText: Text("Another Title"),
                    // messageText: Text(
                    //   "Another  message",
                    //   style: TextStyle(color: Colors.white),
                    // ),
                    colorText: Colors.red,
                    backgroundColor: Colors.black,
                    borderRadius: 30,
                    margin: EdgeInsets.all(10),
                    maxWidth: 100,
                    animationDuration: Duration(milliseconds: 3000),
                    backgroundGradient:
                        LinearGradient(colors: [Colors.red, Colors.green]),
                    borderColor: Colors.purple,
                    borderWidth: 4,
                    boxShadows: [
                      BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(30, 50),
                        spreadRadius: 20,
                        blurRadius: 8,
                      )
                    ],
                    dismissDirection: SnackDismissDirection.HORIZONTAL,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 8000),
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    shouldIconPulse: false,
                    leftBarIndicatorColor: Colors.red,
                    // mainButton: FlatButton(
                    //   child: Text("Retry"),
                    //   color: Colors.green,
                    //   textColor: Colors.white,
                    //   onPressed: () {},
                    // ),
                    onTap: (val) {
                      print("Snackbar Check");
                    },
                    overlayBlur: 5,
                    overlayColor: Colors.grey,
                    padding: EdgeInsets.all(50),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.deepOrange,
                    progressIndicatorValueColor:
                        AlwaysStoppedAnimation<Color>(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (val) {
                      print(val);
                    },
                    userInputForm: Form(
                      child: Row(
                        children: [Expanded(child: TextField())],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
