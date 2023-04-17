import 'package:eat_fresh_app/res/constant/app_assets.dart';
import 'package:eat_fresh_app/res/constant/app_strings.dart';
import 'package:eat_fresh_app/view/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SlideTransition(
            position: Tween<Offset>(begin: const Offset(0.0, 2.5), end: Offset.zero).animate(controller.animationController!),
            child: AnimatedOpacity(
              opacity: controller.animationStart.value ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.appName,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                  10.verticalSpace,
                  SvgPicture.asset(
                    AppAssets.splashAppLogo,
                    semanticsLabel: 'Eat Fresh Logo',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
