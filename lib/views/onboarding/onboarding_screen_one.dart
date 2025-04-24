import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/utils/extension.dart';
import '../../res/app_colors.dart';
import '../../routers/routers_name.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/onboarding_one.png',
            width: double.infinity,
            height: 420.h,
            fit: BoxFit.cover,
          ),
          60.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              textAlign: TextAlign.start,
              'Your AI Powered Skin Care Companion ',
              style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.bold, color: AppColor.black),
            ),
          ),
          18.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Detect, track, and understand your skin conditions in seconds. Just take a photo — we’ll take care of the rest.",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColor.text,
              ),
            ),
          ),
          64.height,
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: (){
                    Get.toNamed(RouteName.onBoardingScreenTwo);
                  },
                  child: Image.asset("assets/images/Button.png")),
            ),
          )
        ],
      ),
    );
  }
}
