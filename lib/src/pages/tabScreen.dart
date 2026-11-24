import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:update_create/src/controller/tabcontroller.dart';
import 'package:update_create/src/pages/Home_screen/homeScreen.dart';
import 'package:update_create/src/pages/widgets/producScreen.dart';
import 'package:update_create/src/pages/widgets/tabbutton.dart';

class TabScreen extends StatelessWidget {
  TabScreen({super.key});

  MyTabController myTabController = Get.put(MyTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),

                    color: Colors.grey[300],
                  ),
                  child: Icon(Icons.grid_view_rounded),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),

                    color: Colors.grey[300],
                  ),
                  child: Icon(Icons.notifications),
                ),
              ],
            ),

            Row(
              children: [
                tabButton('Home', 0),
                tabButton("My Cart", 1),
                tabButton("Product", 3),
              ],
            ),

            Expanded(
              child: Obx(() {
                if (myTabController.index.value == 0) {
                  return HomeScreen();
                } else if (myTabController.index.value == 1) {
                  return ProducScreen();
                } else {
                  return Center(child: Text("Settings Page"));
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
