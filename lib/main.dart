
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sera_ai_app/home_screen.dart';
import 'package:sera_ai_app/res/app_colors.dart';
import 'package:sera_ai_app/routers/routers.dart';
import 'package:sera_ai_app/routers/routers_name.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 850),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return GetMaterialApp(
          theme: ThemeData(
            iconTheme: const IconThemeData(color: AppColor.secondary),
            primaryColor: AppColor.primary,
            scaffoldBackgroundColor: AppColor.primary,
            appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.light,
                systemNavigationBarColor: AppColor.primary,
                statusBarColor: AppColor.primary, // status bar color
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          title: 'Sera AI',
          getPages: AppRoutes.appRoute(),
          initialRoute: RouteName.onBoardingCarousel,
          // initialRoute: RouteName.splashView,
          // home: HomeScreen(),
        );
      },
    );
  }
}
