import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part1/getXController/student.dart';
import 'package:getx_part1/getXController/student2.dart';

class MyController2 extends GetxController {
  var student2 = Student2(email: "flutter@gmail.com", id: 185).obs;

  void convert() {
    student2.update((student2) {
      student2.email = student2.email.toString().toUpperCase();
    });
  }
}
