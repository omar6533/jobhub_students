import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
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
            TextField()
          ],
        ),
      ),
    );
  }
}
