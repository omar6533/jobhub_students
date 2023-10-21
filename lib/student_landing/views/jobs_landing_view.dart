import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:jobhub/authintication/controllers/auth_controller.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';

class JobsLandingView extends StatelessWidget {
  const JobsLandingView({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Row(
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
          )
        ],
      ),
    );
  }
}
