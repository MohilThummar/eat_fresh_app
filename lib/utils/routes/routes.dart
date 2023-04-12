import 'package:get/get.dart';

import '../../view/splash/splash_binding.dart';
import '../../view/splash/splash_screen.dart';
import 'routes_name.dart';

List<GetPage> pages = [
  GetPage(name: RoutesName.splashScreen, page: () => const SplashScreen(), binding: SplashBindings()),
];
