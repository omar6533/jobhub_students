import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/employer/jobs/views/emp_jobs_view.dart';
import 'package:jobhub/employer/landing/controller/emp_landing_controller.dart';

import 'package:jobhub/employer/profile/views/emp_profile_view.dart';
import 'package:jobhub/constants.dart';

class EmpLandingView extends StatelessWidget {
  const EmpLandingView({super.key});

  @override
  Widget build(BuildContext context) {
    EmpLandingController empLandingController = Get.put(EmpLandingController());
    final listOfWidgets = [
      EmpProfileView(),
      EmpProfileView(),
      EmpJobsView(),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: AppColors.primary,
          currentIndex: empLandingController.selectedIndex.value,
          onTap: (int index) {
            empLandingController.selectNavigationIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_copy),
              label: 'Applications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Jobs',
            ),
          ],
        ),
      ),
      body: Obx(() => listOfWidgets[empLandingController.selectedIndex.value]),
    );
  }
}
