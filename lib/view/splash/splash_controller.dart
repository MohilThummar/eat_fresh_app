import 'package:eat_fresh_app/utils/routes/routes_name.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with GetTickerProviderStateMixin {
  AnimationController? animationController;
  RxBool animationStart = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200));
    animationController!.forward();
    Future.delayed(const Duration(milliseconds: 500), () => animationStart.value = true);
    Future.delayed(const Duration(seconds: 3), () => Get.offNamed(RoutesName.welcomeScreen));
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController!.dispose();
    super.dispose();
  }
}
