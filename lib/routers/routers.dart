import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sera_ai_app/routers/routers_name.dart';
import 'package:sera_ai_app/views/interests/interests_selection_screen.dart';
import 'package:sera_ai_app/views/interests/problem_specifics_screen.dart';
import 'package:sera_ai_app/views/onboarding/onboarding_carousel.dart';
import 'package:sera_ai_app/views/onboarding/onboarding_screen_four.dart';
import 'package:sera_ai_app/views/onboarding/onboarding_screen_one.dart';
import 'package:sera_ai_app/views/onboarding/onboarding_screen_three.dart';
import 'package:sera_ai_app/views/onboarding/onboarding_screen_two.dart';
import 'package:sera_ai_app/views/pro_subscription/pro_subscription_screen.dart';

import '../views/splash/splash_screen.dart';
// import '../views/splash_screen.dart';

class AppRoutes {
  static appRoute() => [
    GetPage(
      name: RouteName.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteName.onBoardingCarousel,
      page: () => const OnboardingCarousel(),
    ),
    GetPage(
      name: RouteName.onBoardingScreenOne,
      page: () => const OnboardingScreenOne(),
    ),
    GetPage(
      name: RouteName.onBoardingScreenTwo,
      page: () => const OnboardingScreenTwo(),
    ),
    GetPage(
      name: RouteName.onBoardingScreenThree,
      page: () => const OnboardingScreenThree(),
    ), GetPage(
      name: RouteName.onBoardingScreenFour,
      page: () => const OnboardingScreenFour(),
    ),
    GetPage(
      name: RouteName.interestSelectionScreen,
      page: () => const InterestSelectionScreen(),
    ),
    GetPage(
      name: RouteName.problemSpecificsScreen,
      page: () => const ProblemSpecificsScreen(),
    ),GetPage(
      name: RouteName.proSubscriptionScreen,
      page: () => const ProSubscriptionScreen(),
    ),
  ];
}
