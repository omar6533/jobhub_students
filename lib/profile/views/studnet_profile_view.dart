import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobhub/authintication/controllers/auth_controller.dart';
import 'package:jobhub/profile/views/student_profile_personal_info.dart';
import 'package:jobhub/profile/views/student_skills_view.dart';
import 'package:jobhub/shared/components/jobHub_button.dart';
import 'package:jobhub/profile/controller/studnet_profile_controller.dart';
import 'package:jobhub/profile/views/student_profile_experince.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';

class StudentProfileView extends StatelessWidget {
  const StudentProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
    StudentProfileController studentProfileController =
        Get.put(StudentProfileController());
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Student Profile'),
            SizedBox(
              height: 8,
            ),
            ClipOval(
              child: CachedNetworkImage(
                  width: 100,
                  height: 100,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Text('error'),
                  imageUrl: '${authController.googleUser?.photoUrl}',
                  fit: BoxFit.fill),
            ),
            SizedBox(
              height: 8,
            ),
            Text('${authController.googleUser?.displayName}'),
            SizedBox(
              height: 10.h,
            ),
            Obx(() => studentProfileController.isStudentProfileEmpty.isTrue
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/Error.svg'),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text('You need to add your studnet profile data'),
                        SizedBox(
                          height: 3.h,
                        ),
                        JobHubButton(
                          text: 'Add your data',
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              backgroundColor: const Color(0xFFF2F3F5),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: Get.height *
                                      0.8, // Set height to 80% of screen height

                                  child: Obx(() =>
                                      studentProfileController.widgetsList[
                                          studentProfileController
                                              .selectedwidgetIndex.value]),
                                );
                              },
                            ).then((value) {
                              studentProfileController
                                  .selectedwidgetIndex.value = 0;
                            });
                          },
                        )
                      ],
                    ),
                  )
                : SizedBox(
                    height: 50.h,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: PageView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return JobHubText(
                            text: 'elemnt at $index',
                            style: titleStyle,
                          );
                        },
                      ),
                    ),
                  ))
          ],
        )
      ],
    );
  }
}
