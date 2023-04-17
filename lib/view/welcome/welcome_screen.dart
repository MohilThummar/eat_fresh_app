import 'package:eat_fresh_app/res/common/app_button.dart';
import 'package:eat_fresh_app/res/constant/app_assets.dart';
import 'package:eat_fresh_app/res/constant/app_colors.dart';
import 'package:eat_fresh_app/view/welcome/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.welcomeBG,
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)).r,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  8.verticalSpace,
                  Text(
                    "Cook like a chef",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                  10.verticalSpace,
                  Text(
                    "Make delicious dishes from the list of 500+ recipes curated by chefs from around the world ",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.secondaryTextColor,
                          fontSize: 15.sp,
                        ),
                  ),
                  15.verticalSpace,
                  AppButton(
                    onPressed: () {},
                    title: "Start Cooking",
                  ),
                  SizedBox(height: ScreenUtil().bottomBarHeight),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
