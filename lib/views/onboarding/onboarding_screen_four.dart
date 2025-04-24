import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sera_ai_app/utils/extension.dart';
import '../../res/app_colors.dart';
import '../../routers/routers_name.dart';

class OnboardingScreenFour extends StatefulWidget {
  const OnboardingScreenFour({super.key});

  @override
  State<OnboardingScreenFour> createState() => _OnboardingScreenFourState();
}

class _OnboardingScreenFourState extends State<OnboardingScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/onboarding_four.png',
            width: double.infinity,
            height: 450.h,
            fit: BoxFit.cover,
          ),
          60.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              textAlign: TextAlign.start,
              'Let’s begin your skin health journey.',
              style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.bold, color: AppColor.black),
            ),
          ),
          18.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Explore from a list of experts near you.Get the expert’s contact information.Know the expert’s medical affiliation.",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColor.text,
              ),
            ),
          ),
          50.height,
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: (){
                    Get.toNamed(RouteName.onBoardingScreenFour);
                  },
                  child: Image.asset("assets/images/Button.png")),
            ),
          )
        ],
      ),
    );
  }
}
