import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lapor_kasat/app/controllers/main_controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.bodyMain[controller.indexBottomNavbar.value],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                controller.changeIndex(0);
              },
            ),
            IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () {
                controller.changeIndex(1);
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                controller.changeIndex(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
