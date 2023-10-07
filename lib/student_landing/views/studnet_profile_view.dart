import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/authintication/controllers/auth_controller.dart';

class StudentProfileView extends StatelessWidget {
  const StudentProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
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
          ],
        )
      ],
    );
  }
}
