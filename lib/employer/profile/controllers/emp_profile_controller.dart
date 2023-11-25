import 'package:get/get.dart';

class EmpProfileController extends GetxController {
  RxInt selectedSector = (-1).obs;
  final List<String> listOfSectors = [
    "Government",
    "private",
    "International",
  ];
}
