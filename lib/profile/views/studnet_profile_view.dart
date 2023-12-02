import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobhub/authintication/controllers/auth_controller.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/profile/views/student_profile_personal_info.dart';
import 'package:jobhub/profile/views/student_skills_view.dart';
import 'package:jobhub/shared/components/jobHub_button.dart';
import 'package:jobhub/profile/controller/studnet_profile_controller.dart';
import 'package:jobhub/profile/views/student_profile_experince.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';
import 'package:jobhub/shared/helpers.dart';

class StudentProfileView extends StatefulWidget {
  const StudentProfileView({super.key});

  @override
  State<StudentProfileView> createState() => _StudentProfileViewState();
}

class _StudentProfileViewState extends State<StudentProfileView> {
  AuthController authController = Get.find();
  StudentProfileController studentProfileController =
      Get.put(StudentProfileController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                            studentProfileController.selectedwidgetIndex.value =
                                0;
                          });
                        },
                      )
                    ],
                  ),
                )
              : SizedBox(
                  width: Get.width,
                  height: 100,
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: SizedBox(
                              width:
                                  150, // Adjust the width according to your needs
                              child: Obx(() => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      JobHubText(
                                        text: 'element at $index',
                                        style: studentProfileController
                                                    .selectedProfileOption
                                                    .value ==
                                                index
                                            ? size14Primary
                                            : size14Black,
                                      ),
                                    ],
                                  )),
                            ),
                            onTap: () {
                              studentProfileController
                                  .selectedProfileOption.value = index;
                            },
                          );
                        },
                      )))),
        ]),
        Obx(() => studentProfileController.selectedProfileOption.value == 0
            ? Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppColors.containerBackgroundColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    JobHubText(
                      text: 'Contact information',
                      style: size18w500Black,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 5.w,
                        ),
                        JobHubText(
                            text: studentProfileController
                                    .currentUserData['mobileNo'] ??
                                ''),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 5.w,
                        ),
                        JobHubText(
                            text: authController.googleUser?.email ?? ''),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.person),
                        SizedBox(
                          width: 5.w,
                        ),
                        JobHubText(
                            text: studentProfileController
                                    .currentUserData['nationality'] ??
                                ''),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.work),
                        SizedBox(
                          width: 5.w,
                        ),
                        JobHubText(
                            text: studentProfileController
                                    .currentUserData['major'] ??
                                ''),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : const SizedBox())
      ],
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      showLoaderDialog(context);
      String? udID = authController.getGoogleUserID();
      studentProfileController.getUserDataByUid(udID ?? '');
      dismissLoaderDialog(context);
    });

    super.initState();
  }
}
