import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part1/navigation_details/unknown_route.dart';

import 'home_navigation.dart';
import 'next_screen.dart';

class NavigationRoute extends StatelessWidget {
  String name = "Masrafi Anam";
  String age = "My age is 25";
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => NavigationRoute()),
        GetPage(name: '/home', page: () => HomeNavigation()),
        // GetPage(
        //   name: '/nextScreen',
        //   page: () => NextScreen(),
        //   transition: Transition.leftToRight,
        // )
        GetPage(
            name: '/nextScreen/:someValue',
            page: () => NextScreen(),
            transition: Transition.leftToRight),
      ],
      unknownRoute: GetPage(name: '/notfound', page: () => UnKnownRoute()),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Go to Home"),
                onPressed: () {
                  // Get.toNamed(
                  //   "/home",
                  // );
                  Get.toNamed(
                      "/home?channel=Masrafi Anam&content=Flutter GetX&name=$name&age=$age");
                },
              ),
              RaisedButton(
                child: Text("unKnown"),
                onPressed: () {
                  // Get.toNamed(
                  //   "/home",
                  // );
                  Get.toNamed("/X"); //page ar link na paile unknown a cle jabe
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
