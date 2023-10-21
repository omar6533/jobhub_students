import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/student_landing/controller/student_landing_controller.dart';
import 'package:jobhub/student_landing/views/studnet_profile_view.dart';

class StudentLanding extends StatelessWidget {
  const StudentLanding({super.key});

  @override
  Widget build(BuildContext context) {
    StudentLandingController studentLandingController = Get.find();
    final listOfWidgets = [
      StudentProfileView(),
      StudentProfileView(),
      StudentProfileView(),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: AppColors.primary,
          currentIndex: studentLandingController.selectedIndex.value,
          onTap: (int index) {
            studentLandingController.selectNavigationIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
          ],
        ),
      ),
      body: listOfWidgets[studentLandingController.selectedIndex.value],
    );
  }
}
