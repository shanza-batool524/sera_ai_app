import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/utils/extension.dart';

import '../../res/app_colors.dart';
import '../../routers/routers_name.dart';

class OnboardingScreenThree extends StatelessWidget {
  const OnboardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/accuracy.png',
              width: 350,
              height: 350,
              fit: BoxFit.cover,
            ),
            20.height,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w900,
                  color: AppColor.text,
                ),
                children: [
                  const TextSpan(text: 'Quick Screen Analysis '),
                  TextSpan(
                    text: 'with 98% accuracy',
                    style: TextStyle(color: AppColor.purple),
                  ),
                ],
              ),
            ),
            40.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryButton(
                onTap: () {
                  Get.toNamed(RouteName.interestSelectionScreen);
                },
                childWidget: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColor.text,
                  ),
                ),
                bgColor: AppColor.button,
                gradient: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
