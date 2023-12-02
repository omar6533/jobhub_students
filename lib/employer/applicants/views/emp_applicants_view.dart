import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:jobhub/constants.dart';
import 'package:jobhub/shared/components/jobHub_button.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';

class EmpApplicantsView extends StatelessWidget {
  const EmpApplicantsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            JobHubText(text: 'Applicants', style: size32BlackBold),
            SizedBox(
              height: 5.h,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(vertical: 1.h),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: AppColors.containerBackgroundColor,
                      ),
                      bottom: BorderSide(
                        width: 1,
                        color: AppColors.containerBackgroundColor,
                      ),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      JobHubText(
                        text: 'Faisal Abdullah',
                        style: size18w500Black,
                      ),
                      JobHubText(
                        text: 'UX Designer',
                        style: size14Black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          JobHubText(
                            text: 'Riyadh, SA',
                            style: size12textFiledBackgroundColor,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          JobHubButton(
                            backgroundColor: AppColors.primary,
                            text: 'Accept',
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          JobHubButton(
                            backgroundColor: Colors.red,
                            text: 'Reject',
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
