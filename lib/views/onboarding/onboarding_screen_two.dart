import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/utils/extension.dart';

import '../../res/app_colors.dart';
import '../../routers/routers_name.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/acne.png',
              width: 350,
              height: 350,
              fit: BoxFit.cover,
            ),
            20.height,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: AppColor.text,
                ),
                children: [
                  const TextSpan(text: 'Examine your skin '),
                  TextSpan(
                    text: 'with a snapshot',
                    style: TextStyle(color: AppColor.purple),
                  ),
                ],
              ),
            ),
            30.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryButton(
                onTap: () {
                  Get.toNamed(RouteName.onBoardingScreenThree);
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
