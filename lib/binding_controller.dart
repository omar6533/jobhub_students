import 'package:get/get.dart';
import 'package:jobhub/authintication/controllers/auth_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}
