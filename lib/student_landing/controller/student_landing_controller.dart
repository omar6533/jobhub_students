import 'package:get/get.dart';

class StudentLandingController extends GetxController {
  RxInt selectedIndex = 0.obs;

  selectNavigationIndex(int index) {
    selectedIndex.value = index;
    update();
  }
}
