import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/res/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: PrimaryButton(
          onTap: () {},
          childWidget: Text("data", style: TextStyle(fontSize: 20.sp),),
          bgColor: AppColor.secondary,
          gradient: false,
        ),
      ),
    );
  }
}
