import 'package:get/get.dart';
import 'package:lapor_kasat/app/controllers/main_controller.dart';
import 'package:lapor_kasat/app/controllers/profile_controller.dart';
import 'package:lapor_kasat/app/controllers/ubah_sandi_controller.dart';

class AppBinding {
  AppBinding.init() {
    dependencies();
  }

  void dependencies() {
    Get.put(ProfilController());
    Get.put(MainController());
    Get.put(ProfilController());
    Get.put(UbahSandiController());
  }
}
