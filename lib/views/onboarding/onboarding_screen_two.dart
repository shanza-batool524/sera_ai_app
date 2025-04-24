import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/utils/extension.dart';
import '../../res/app_colors.dart';
import '../../routers/routers_name.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/onboarding_two.png',
            width: double.infinity,
            height: 420.h,
            fit: BoxFit.cover,
          ),
          60.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              textAlign: TextAlign.start,
              'Scan. Analyze. Learn.',
              style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.bold, color: AppColor.black),
            ),
          ),
          18.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Use your camera to scan your skin. Our AI detects over 50+ common skin conditions and provides instant insights.",
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
                    Get.toNamed(RouteName.onBoardingScreenThree);
                  },
                  child: Image.asset("assets/images/Button.png")),
            ),
          )
        ],
      ),
    );
  }
}
