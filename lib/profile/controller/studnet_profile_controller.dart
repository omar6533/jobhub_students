import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class StudentProfileController extends GetxController {
  CollectionReference studentsCollection =
      FirebaseFirestore.instance.collection("students ");

  addStudent() {}

  RxBool isStudentProfileEmpty = true.obs;
}
