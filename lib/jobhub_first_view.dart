import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:jobhub/main.dart';
import 'package:jobhub/shared/components/jobHub_button.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/JobHub.png'),
                SizedBox(
                  height: 15.h,
                ),
                JobHubText(
                  text: 'Login',
                  style: size20BoldBlack,
                ),
                SizedBox(
                  height: 15.h,
                ),
                JobHubButton(
                  text: 'Student login',
                  onPressed: () {
                    Get.to(MyHomePage(title: 'PSU JobHub'));
                  },
                ),
                SizedBox(
                  height: 1.h,
                ),
                JobHubButton(
                  text: 'Employer login',
                  onPressed: () {},
                ),
              ],
            )),
      ),
    );
  }
}
