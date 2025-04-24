import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/utils/extension.dart';
import '../../res/app_colors.dart';
import '../../routers/routers_name.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreenThree extends StatefulWidget {
  const OnboardingScreenThree({super.key});

  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/onboarding_three.png',
            width: double.infinity,
            height: 450.h,
            fit: BoxFit.cover,
          ),
          60.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              textAlign: TextAlign.start,
              'Private. Secure. Encrypted.',
              style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.bold, color: AppColor.black),
            ),
          ),
          18.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "We never share your photos or results without your permission. Your privacy is our top priority.",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColor.text,
              ),
            ),
          ),
          70.height,
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
