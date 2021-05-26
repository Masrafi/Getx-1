import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part1/getXController/student.dart';
import 'package:getx_part1/getXController/student2.dart';

class MyController extends GetxController {
  var student = Student();
  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }
}
