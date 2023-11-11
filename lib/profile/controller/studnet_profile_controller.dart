import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/profile/views/student_profile_experince.dart';
import 'package:jobhub/profile/views/student_profile_personal_info.dart';
import 'package:jobhub/profile/views/student_skills_view.dart';

class StudentProfileController extends GetxController {
  CollectionReference studentsCollection =
      FirebaseFirestore.instance.collection("students ");

  RxInt selectedwidgetIndex = 0.obs;

  addStudent() {}

  RxBool isStudentProfileEmpty = true.obs;

  final List<Widget> widgetsList = [
    StudentProfilePersonInfo(),
    StudentProfileExperienceView(),
    StudentProfileSkillsViw(),
  ];
}
