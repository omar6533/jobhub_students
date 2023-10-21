import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:jobhub/authintication/controllers/auth_controller.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';
import 'package:jobhub/student_landing/controller/student_landing_controller.dart';

class JobsLandingView extends StatelessWidget {
  const JobsLandingView({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
    StudentLandingController studentLandingController = Get.find();
    return ListView(
      children: [
        // image section
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: CachedNetworkImage(
                    width: 50,
                    height: 50,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Text('error'),
                    imageUrl: '${authController.googleUser?.photoUrl}',
                    fit: BoxFit.fill),
              ),
              SizedBox(
                width: 4.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  JobHubText(text: 'Hello'),
                  JobHubText(
                      style: nameStyle,
                      text: authController.googleUser?.displayName ?? ''),
                ],
              )
            ],
          ),
        ), //end of image section
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          height: 5.h,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (studentLandingController.selectedCategory.value ==
                      index) {
                    studentLandingController.selectedCategory.value = -1;
                  } else {
                    studentLandingController.selectedCategory.value = index;
                  }
                },
                child: Obx(
                  () => Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color:
                            studentLandingController.selectedCategory == index
                                ? AppColors.primary
                                : Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(8),
                    margin: EdgeInsets.symmetric(horizontal: 2.w),
                    child: JobHubText(text: 'category'),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
