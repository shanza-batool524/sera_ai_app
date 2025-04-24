import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/utils/extension.dart';

import '../../res/app_colors.dart';

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
      // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const SizedBox(height: 50),
            Center(
              child: Image.asset('assets/images/acne_redness.png', height: 300),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 35.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColor.text,
                ),
                children: [
                  const TextSpan(text: 'Get '),
                  TextSpan(
                    text: 'PRO ',
                    style: const TextStyle(color: Colors.deepPurple),
                  ),
                  const TextSpan(text: 'Access'),
                ],
              ),
            ),
            8.height,
            const Text(
              '✨ Personal AI dermatologist',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            const Text(
              '∞ Unlimited skin scanning',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            20.height,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Enable Free Trial',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: isFreeTrialEnabled,
                    onChanged: (value) {
                      setState(() {
                        isFreeTrialEnabled = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            10.height,
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColor.purple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'YEARLY ACCESS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Rs 19,900/year',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Rs 383/week',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'BEST OFFER',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColor.purple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'WEEKLY ACCESS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Rs 1,900/week',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'POPULAR',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            10.height,
            PrimaryButton(
              onTap: () {},
              bgColor: AppColor.secondary,
              gradient: false,
              childWidget: Text(
                "Continue",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ),
            10.height,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Restore'),
                SizedBox(width: 16),
                Text('Terms'),
                SizedBox(width: 16),
                Text('Privacy'),
              ],
            ),
            20.height,
          ],
        ),
      ),
    );
  }
}
