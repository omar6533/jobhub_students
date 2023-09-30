import 'package:get/get.dart';
import 'package:jobhub/authintication/controllers/auth_controller.dart';
import 'package:jobhub/student_landing/controller/student_landing_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
    Get.put<StudentLandingController>(StudentLandingController());
  }
}
