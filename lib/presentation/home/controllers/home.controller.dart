import 'package:get/get.dart';
import 'package:icaleg/app/controllers/auth_controller.dart';

class HomeController extends GetxController {
  AuthController authController = Get.put(AuthController());

  @override
  void onInit() {
    authController.getDataUser();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
