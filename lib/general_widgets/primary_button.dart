
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget childWidget;
  final double? width;
  final double? height;
  final double? elevation;

  final IconData? iconData;
  final bool gradient;
  final Color? bgColor;
  const PrimaryButton(
      {Key? key,
        required this.onTap,
        required this.childWidget,
        this.width,
        this.height,
        this.elevation = 5,
        required this.bgColor,
        this.iconData,
        required this.gradient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        height: height ?? 55.h,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          gradient: gradient
              ? LinearGradient(
            colors: [AppColor.tertiary, AppColor.secondary],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          )
              : null,
          color: gradient ? null : bgColor,
        ),
        child: childWidget,
      ),

    );
  }
}
