import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/utils/extension.dart';
import '../../res/app_colors.dart';
import '../../routers/routers_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo/sera_logo.png',
                width: 208.w,
                height: 250.h,
              ),
              32.height,
              Text(
                textAlign: TextAlign.center,
                'Empowering you to take control of your skin health with just a photo. Helping you detect, track, and understand skin conditions— anytime, anywhere, giving you trusted insights and connects you with licensed dermatologists when needed. ',
                style: TextStyle(fontSize: 18.sp, color: AppColor.text),
              ),
              20.height,
              Text(
                "Your skin, your health\n Smarter, Faster, Safer.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColor.text,
                ),
              ),
              64.height,
              PrimaryButton(
                onTap: () {
                  Get.toNamed(RouteName.onBoardingScreenOne);
                },
                childWidget: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primary,
                  ),
                ),
                bgColor: AppColor.button,
                gradient: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
