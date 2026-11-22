import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:update_create/controller/tabcontroller.dart';

Widget tabButton(String title, int i) {
  final MyTabController myTabController = Get.put(MyTabController());
  return Expanded(
    child: TextButton(onPressed: () {  myTabController.index.value = i;}, child: Text(title)),
  );
}
