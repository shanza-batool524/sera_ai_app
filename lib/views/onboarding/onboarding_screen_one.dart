import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/utils/extension.dart';
import '../../res/app_colors.dart';
import '../../routers/routers_name.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward(); // Play animation once on screen load
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            20.height,
            ScaleTransition(
              scale: _scaleAnimation,
              child: Image.asset(
                'assets/icons/black.png',
                width: 200.w,
                height: 200.h,
              ),
            ),
            const Text(
              'Welcome to Sera AI',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.text,
              ),
            ),
            Text(
              'Your AI powered skin companion.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.sp),
            ),
            // Image.asset(
            //   'assets/images/reviews.png',
            //   width: 250.w,
            //   height: 100.h,
            //   fit: BoxFit.fill,
            // ),
            190.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryButton(
                onTap: () {
                  Get.toNamed(RouteName.onBoardingScreenTwo);
                },
                childWidget: Text(
                  "Let's go",
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
