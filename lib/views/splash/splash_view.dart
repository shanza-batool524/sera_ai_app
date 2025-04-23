
import 'package:flutter/material.dart';
import 'package:sera_ai_app/res/app_colors.dart';

import '../../res/image_urls.dart';
import '../../view_models/services/storage/local_storage.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  LocalStorage storage = LocalStorage();
  // SplashServices services = SplashServices();

  @override
  void initState() {
    super.initState();
    // for onBoarding Screen
    checkSplash();
  }

  checkSplash() async {
    Future.delayed(const Duration(seconds: 2), () {
      // services.isLogin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: AppColor.primary,
      ),
      backgroundColor: AppColor.primary,
      body: Center(
        child: Image.asset(
          ImagesUrls.logo,
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
