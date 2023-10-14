import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobhub/authintication/controllers/auth_controller.dart';
import 'package:jobhub/shared/components/jobHub_button.dart';
import 'package:jobhub/student_landing/controller/studnet_profile_controller.dart';
import 'package:jobhub/student_landing/views/student_profile_infor.dart';

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
            studentProfileController.isStudentProfileEmpty.isTrue
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
                            Get.to(() => StudentProfileInfoView());
                          },
                        )
                      ],
                    ),
                  )
                : const SizedBox()
          ],
        )
      ],
    );
  }
}
