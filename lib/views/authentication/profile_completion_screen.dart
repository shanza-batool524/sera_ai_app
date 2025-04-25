import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sera_ai_app/general_widgets/primary_button.dart';
import 'package:sera_ai_app/utils/extension.dart';
import '../../res/app_colors.dart';
import '../../routers/routers_name.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  // Dropdown values
  String? gender;
  String? dob;
  String? skinTone;
  String? skinCondition;
  String? allergies;
  String? sunTime;
  String? skincareRoutine;

  bool isExpanded = false;

  final List<String> genders = ["Male", "Female", "Other"];
  final List<String> skinTones = ["Fair", "Medium", "Dark"];
  final List<String> skinConditions = ["Acne", "Eczema", "None"];
  final List<String> allergyOptions = ["Yes", "No"];
  final List<String> sunTimeOptions = ["< 1 hour", "1–2 hours", "3+ hours"];
  final List<String> skincareOptions = ["Yes", "No"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              60.height,
              Text(
                "Let's complete your profile",
                style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w900,
                  color: AppColor.black,
                ),
              ),
              Text(
                "It will help us to know more about you!",
                style: TextStyle(fontSize: 16.sp, color: AppColor.text),
              ),
              40.height,
              _buildExpansionTile(
                hint: "Choose Gender",
                options: genders,
                selected: gender,
                onChanged: (val) => setState(() {
                  gender = val;
                  isExpanded = false;  // Close the tile automatically
                }),
              ),
              _buildDatePicker(
                hint: "Date of Birth",
                selectedDate: dob,
                onPicked: (val) => setState(() => dob = val),
              ),
              _buildExpansionTile(
                hint: "What is your Skin Tone",
                options: skinTones,
                selected: skinTone,
                onChanged: (val) => setState(() {
                  skinTone = val;
                  isExpanded = false;
                }),
              ),
              _buildExpansionTile(
                hint: "History of any skin conditions?",
                options: skinConditions,
                selected: skinCondition,
                onChanged: (val) => setState(() {
                  skinCondition = val;
                  isExpanded = false;
                }),
              ),
              _buildExpansionTile(
                hint: "Any known allergies or sensitivities?",
                options: allergyOptions,
                selected: allergies,
                onChanged: (val) => setState(() {
                  allergies = val;
                  isExpanded = false;
                }),
              ),
              _buildExpansionTile(
                hint: "Average time spend in sun daily?",
                options: sunTimeOptions,
                selected: sunTime,
                onChanged: (val) => setState(() {
                  sunTime = val;
                  isExpanded = false;
                }),
              ),
              _buildExpansionTile(
                hint: "Any current skincare routine?",
                options: skincareOptions,
                selected: skincareRoutine,
                onChanged: (val) => setState(() {
                  skincareRoutine = val;
                  isExpanded = false;
                }),
              ),
              100.height,
              PrimaryButton(
                onTap: () {
                  Get.toNamed(RouteName.loginScreen);
                },
                childWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColor.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    5.width,
                    Icon(Icons.arrow_forward_ios_rounded, color: AppColor.primary),
                  ],
                ),
                bgColor: AppColor.secondary,
                gradient: true,
              ),
              20.height,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpansionTile({
    required String hint,
    required List<String> options,
    required String? selected,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color:AppColor.text_field,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: ExpansionTile(
        key: ValueKey<String?>(selected),
        title: Text(
          selected ?? hint,
          style: TextStyle(
            color: selected == null ? AppColor.sec_text : AppColor.sec_text,
            fontSize: 14.sp,
          ),
        ),
        trailing: const Icon(Icons.keyboard_arrow_down_rounded),
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        shape: const Border(),
        initiallyExpanded: false,
        children: options.map((e) {
          return ListTile(
            title: Text(e),
            onTap: () {
              onChanged(e);
            },
          );
        }).toList(),
      ),
    );
  }


  Widget _buildDatePicker({
    required String hint,
    required String? selectedDate,
    required ValueChanged<String> onPicked,
  }) {
    return GestureDetector(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: DateTime(2000),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (picked != null) {
          onPicked("${picked.year}-${picked.month}-${picked.day}");
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        decoration: BoxDecoration(
          color: AppColor.text_field,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedDate ?? hint,
              style: TextStyle(
                color: selectedDate == null ? AppColor.sec_text : AppColor.sec_text,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
