import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/shared/components/jobHub_back_button.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';

class StudentProfileInfoView extends StatelessWidget {
  const StudentProfileInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const JobHubBackButton(),
            SizedBox(
              height: 6.h,
            ),
            JobHubText(text: 'My Account', style: titleStyle),
            SizedBox(
              height: 3.h,
            ),
            JobHubText(
              text: 'Experince',
              style: TextStyle(color: Color(0xFF3C3C43)),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, // Shadow color
                    blurRadius: 250, // Adjust the blur radius as needed
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: AppColors.primary,
                        )),
                    hoverColor: AppColors.primary,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
