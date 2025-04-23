import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sera_ai_app/routers/routers_name.dart';
import 'package:sera_ai_app/views/onboarding/onboarding_carousel.dart';
import 'package:sera_ai_app/views/onboarding/onboarding_screen_one.dart';
import 'package:sera_ai_app/views/onboarding/onboarding_screen_two.dart';

import '../views/splash/splash_view.dart';
// import '../views/splash_view.dart';

class AppRoutes {
  static appRoute() => [
        // GetPage(
        //   name: RouteName.splashView,
        //   page: () => const SplashView(),
        // ),
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
      ];
}
