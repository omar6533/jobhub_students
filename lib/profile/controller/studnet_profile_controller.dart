import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/profile/views/student_profile_experince.dart';
import 'package:jobhub/profile/views/student_profile_personal_info.dart';
import 'package:jobhub/profile/views/student_skills_view.dart';

class StudentProfileController extends GetxController {
  CollectionReference studentsCollection =
      FirebaseFirestore.instance.collection("students ");
  TextEditingController arabicName = TextEditingController();
  TextEditingController major = TextEditingController();
  TextEditingController gpa = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController nationality = TextEditingController();
  TextEditingController companyName = TextEditingController();
  TextEditingController position = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController startDate = TextEditingController();
  TextEditingController endDate = TextEditingController();
  TextEditingController certificatName = TextEditingController();
  TextEditingController date = TextEditingController();

  RxInt selectedwidgetIndex = 0.obs;

  addStudent() {}

  RxBool isStudentProfileEmpty = true.obs;

  final List<Widget> widgetsList = [
    StudentProfilePersonInfo(),
    StudentProfileExperienceView(),
    StudentProfileSkillsViw(),
  ];

  Future getUserDataByUid(String uid) async {
    try {
      DocumentSnapshot userData = await studentsCollection.doc(uid).get();

      if (userData.exists) {
        return userData.data();
      } else {
        if (kDebugMode) {
          print('User data not found for UID: $uid');
        }
        return {};
      }
    } catch (error) {
      if (kDebugMode) {
        print('Error fetching user data: $error');
      }
      return {};
    }
  }

  Future<void> saveStudentInfo({
    String college = "",
    String cv = "",
    String extraMobileNo = "",
    String gpa = "",
    List<String> jobIds = const [],
    String major = "",
    String mobileNo = "",
    String nameAR = "",
    String nameEn = "",
    String nationalId = "",
    String nationality = "",
    String professionalMail = "",
  }) async {
    try {
      await studentsCollection.add({
        'college': college,
        'cv': cv,
        'extraMobileNo': extraMobileNo,
        'gpa': gpa,
        'job_id': jobIds,
        'major': major,
        'mobileNo': mobileNo,
        'nameAR': nameAR,
        'nameEn': nameEn,
        'national_id': nationalId,
        'nationality': nationality,
        'professionalMail': professionalMail,
      });
      if (kDebugMode) {
        print('Student information saved successfully.');
      }
    } catch (error) {
      if (kDebugMode) {
        print('Error saving student information: $error');
      }
    }
  }
}
