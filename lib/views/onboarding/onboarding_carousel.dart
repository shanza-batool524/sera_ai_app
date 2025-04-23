import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sera_ai_app/views/onboarding/onboarding_screen_one.dart';
import 'package:sera_ai_app/views/onboarding/onboarding_screen_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingCarousel extends StatefulWidget {
  const OnboardingCarousel({super.key});

  @override
  State<OnboardingCarousel> createState() => _OnboardingCarouselState();
}

class _OnboardingCarouselState extends State<OnboardingCarousel> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC08AE0),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => currentIndex = index);
              },
              children:  [
                OnboardingScreenOne(),
                OnboardingScreenTwo(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30.h),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 2,
              effect: WormEffect(
                dotHeight: 10.h,
                dotWidth: 10.w,
                spacing: 10.w,
                dotColor: Colors.white54,
                activeDotColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
