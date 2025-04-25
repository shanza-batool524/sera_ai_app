import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sera_ai_app/utils/extension.dart';

import '../../general_widgets/primary_button.dart';
import '../../res/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Profile Row
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/icons/user.png'),
                    ),
                    12.width,
                    Expanded(
                      child: Text(
                        'Stefani Wong',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    PrimaryButton(
                      width: 20.w,
                      height: 30.h,
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
                  ],
                ),

                const SizedBox(height: 30),

                _SectionCard(
                  title: "Account",
                  children: const [
                    _ListTileItem(
                      icon: Icons.person_outline,
                      text: 'Personal Data',
                    ),
                    _ListTileItem(
                      icon: Icons.emoji_events_outlined,
                      text: 'Achievement',
                    ),
                    _ListTileItem(
                      icon: Icons.history,
                      text: 'Activity History',
                    ),
                    _ListTileItem(
                      icon: Icons.fitness_center,
                      text: 'Workout Progress',
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                _SectionCard(
                  title: "Notification",
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.notifications_none,
                              color: Colors.deepPurple,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Pop-up Notification",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Switch(
                          value: true,
                          onChanged: (val) {},
                          activeColor: Colors.purple,
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                _SectionCard(
                  title: "Other",
                  children: const [
                    _ListTileItem(
                      icon: Icons.contact_mail_outlined,
                      text: 'Contact Us',
                    ),
                    _ListTileItem(
                      icon: Icons.privacy_tip_outlined,
                      text: 'Privacy Policy',
                    ),
                    _ListTileItem(
                      icon: Icons.settings_outlined,
                      text: 'Settings',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _SectionCard({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          ...children,
        ],
      ),
    );
  }
}

class _ListTileItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ListTileItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(icon, color: Colors.deepPurple),
          title: Text(text, style: const TextStyle(fontSize: 16)),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),
        const Divider(height: 1),
      ],
    );
  }
}
