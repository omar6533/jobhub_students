import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:jobhub/shared/components/jobHub_text.dart';

class JobWidget extends StatelessWidget {
  String? imagePath;
  String? jobTitle;
  String? location;
  String? submittedDate;
  JobWidget({
    this.imagePath,
    this.jobTitle,
    this.location,
    this.submittedDate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                child: Image.asset(imagePath ?? 'assets/Coinbase.png'),
              ),
              SizedBox(
                width: 2.w,
              ),
              JobHubText(
                text: jobTitle ?? 'Product Designer',
                style: size20BoldBlack,
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          JobHubText(text: location ?? 'Sa, Riyadh'),
          SizedBox(
            height: 2.h,
          ),
          JobHubText(text: submittedDate ?? '2 days ago'),
        ],
      ),
    );
  }
}
