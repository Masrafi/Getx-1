import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part1/navigation/home.dart';

class RouteNavigation extends StatelessWidget {
  var data;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Go to Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Go to Home"),
                onPressed: () async {
                  /* Get.to(
                    Home(),
                    fullscreenDialog: true,
                    transition: Transition.zoom,
                    duration: Duration(milliseconds: 4000),
                    curve: Curves.bounceInOut,
                  );*/

                  //Get.to(Home(), arguments: "Data from Main");

                  data = await Get.to(Home());
                  print("The Receive Data is $data");

                  //Go to the home screen but no option to return to previous screen
                  //Get.off(Home());

                  //Go to the home screen and cancel all prevoius screen.routes
                  //Get.offAll(Home());

                  //Go to the next screen with some data
                  //Get.to(Home(), arguments: "Data from main");

                  //Go to the next screen and receive data that send from home screen
                  //var data= await Get.to(Home());
                  //print("The receive data is $sata");
                },
              ),
              Text(
                "${Get.arguments}",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
