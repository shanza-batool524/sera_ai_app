import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/utils/extension.dart';
import '../../res/app_colors.dart';
import '../../routers/routers_name.dart';

class ProSubscriptionScreen extends StatefulWidget {
  const ProSubscriptionScreen({super.key});

  @override
  State<ProSubscriptionScreen> createState() => _ProSubscriptionScreenState();
}

class _ProSubscriptionScreenState extends State<ProSubscriptionScreen> {
  bool isFreeTrialEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                50.height,
                Center(
                  child: Image.asset(
                    'assets/images/subscription.png',
                    height: 300,
                  ),
                ),
                30.height,
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black,
                    ),
                    children: [
                      const TextSpan(text: 'Get '),
                      TextSpan(
                        text: 'PRO ',
                        style: const TextStyle(color: AppColor.secondary),
                      ),
                      const TextSpan(text: 'Access'),
                    ],
                  ),
                ),
                8.height,
                const Text(
                  'Personal AI dermatologist\n Unlimited skin scanning\n   Export results to pdf',
                  style: TextStyle(fontSize: 17, color: AppColor.text),
                  textAlign: TextAlign.center,
                ),
                30.height,
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColor.tertiary_light,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Monthly Subscription',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColor.black,
                            ),
                          ),
                          Text(
                            "US\$ 5.99",
                            style: TextStyle(
                                fontSize: 16.sp, color: AppColor.text),
                          ),
                        ],
                      ),
                      Container(
                        width: 94.w,
                        height: 26.h,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          'Popular',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.secondary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                10.height,
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColor.tertiary_light,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Annual Subscription',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColor.black,
                            ),
                          ),
                          Text(
                            "US\$ 59.99 (You save 25%)",
                            style: TextStyle(
                                fontSize: 14, color: AppColor.text),
                          ),
                        ],
                      ),
                      Container(
                        width: 94.w,
                        height: 26.h,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          'Best Offer',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.secondary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                36.height,
                PrimaryButton(
                  onTap: () {},
                  bgColor: AppColor.secondary,
                  gradient: true,
                  childWidget: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                    ),
                  ),
                ),
                10.height,
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black,
                    ),
                    children: [
                      const TextSpan(text: 'Get '),
                      TextSpan(
                        text: 'FREE ANALYSIS ',
                        style: const TextStyle(color: AppColor.secondary),
                      ),
                    ],
                  ),
                ),
                15.height,
                Text(
                  'Privacy Policy  || Terms of use',
                  style: TextStyle(color: AppColor.text),
                ),
              ],
            ),
          ),
          Positioned(
            top: 36,
            left: 16,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(RouteName.onBoardingScreenFour);
              },
              child: const Icon(
                Icons.close,
                size: 26,
                color: AppColor.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
