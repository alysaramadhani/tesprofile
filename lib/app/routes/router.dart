// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:lapor_kasat/app/pages/editprofile.dart';
import 'package:lapor_kasat/app/pages/main_page.dart';
import 'package:lapor_kasat/app/pages/profile.dart';
import 'package:lapor_kasat/app/pages/splash_screen.dart';
import 'package:lapor_kasat/app/pages/ubahsandi.dart';

class Routes {
  static const SPLASH = '/';
  static const PROFILE = '/profile';
  static const EDIT_PROFILE = '/edit-profile';
  static const UBAH_SANDI = '/ubah-sandi';
  static const MAIN = '/main';
}

class AppPage {
  AppPage._();

  static const INITIAL = Routes.MAIN;

  static final router = [
    GetPage(
      name: Routes.MAIN,
      page: () => const MainPage(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => const ProfilePage(),
    ),
    GetPage(
      name: Routes.EDIT_PROFILE,
      page: () => const EditProfilePage(),
    ),
    GetPage(
      name: Routes.UBAH_SANDI,
      page: () => const UbahSandiPage(),
    ),
  ];
}
