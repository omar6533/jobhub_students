import 'package:get/get.dart';

class EmpLandingController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt selectedCategory = (-1).obs;

  selectNavigationIndex(int index) {
    selectedIndex.value = index;
    update();
  }
}
