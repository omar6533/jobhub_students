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

        //category section
        // SizedBox(
        //   height: 5.h,
        //   child: ListView.builder(
        //     itemCount: studentLandingController.ListOfCategories.length,
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context, index) {
        //       return GestureDetector(
        //         onTap: () {
        //           if (studentLandingController.selectedCategory.value ==
        //               index) {
        //             studentLandingController.selectedCategory.value = -1;
        //           } else {
        //             studentLandingController.selectedCategory.value = index;
        //           }
        //         },
        //         child: Obx(
        //           () => Container(
        //             width: 30.w,
        //             decoration: BoxDecoration(
        //                 border: Border.all(color: Colors.grey),
        //                 color:
        //                     studentLandingController.selectedCategory == index
        //                         ? AppColors.primary
        //                         : Colors.white,
        //                 borderRadius: BorderRadius.circular(12)),
        //             padding: const EdgeInsets.all(8),
        //             margin: EdgeInsets.symmetric(horizontal: 2.w),
        //             child: JobHubText(
        //                 style: size14Black,
        //                 text:
        //                     '${studentLandingController.ListOfCategories[index]}'),
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ), // end of category section

        // SizedBox(
        //   height: 6.h,
        // ),

        //recommended section

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: JobHubText(
            text: 'Recommended for you',
            style: size20BoldBlack,
          ),
        ),
        SizedBox(
          height: 3.h,
        ),

        SizedBox(
          height: 30.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/amazon.png'),
                      SizedBox(
                        height: 2.h,
                      ),
                      JobHubText(
                        text: 'UX Designer',
                        style: size20BoldBlack,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      JobHubText(text: 'Amazon'),
                      SizedBox(
                        height: 1.h,
                      ),
                      JobHubText(text: 'Sa, Riyadh'),
                      SizedBox(
                        height: 2.h,
                      ),
                      JobHubText(text: '2 days ago'),
                    ],
                  ),
                ),
              );
            },
          ),
        ) //end of recommended section
        ,
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: JobHubText(
            text: 'What is new',
            style: size20BoldBlack,
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset('assets/Coinbase.png'),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        JobHubText(
                          text: 'Product Designer',
                          style: size20BoldBlack,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    JobHubText(text: 'Sa, Riyadh'),
                    SizedBox(
                      height: 2.h,
                    ),
                    JobHubText(text: '2 days ago'),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
