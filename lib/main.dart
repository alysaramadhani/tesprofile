import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lapor_kasat/app/routes/route_controller.dart';
import 'package:lapor_kasat/app/routes/router.dart';

void main() {
  runApp(const MyApp());
  AppBinding.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPage.INITIAL,
      getPages: AppPage.router,
    );
  }
}
