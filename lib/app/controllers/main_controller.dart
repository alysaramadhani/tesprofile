import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lapor_kasat/app/pages/profile.dart';

class MainController extends GetxController {
  final List<Widget> bodyMain = [
    const Center(child: Text('Home')),
    const Center(child: Text('Bookmark')),
    const ProfilePage(),
  ];

  final RxInt indexBottomNavbar = 0.obs;

  void changeIndex(int index) {
    indexBottomNavbar.value = index;
  }

  
}
