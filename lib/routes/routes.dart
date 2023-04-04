import 'package:eat_fresh_app/view/splash/splash_screen.dart';
import 'package:get/get.dart';

import 'routes_name.dart';

List<GetPage> pages = [
  GetPage(name: RoutesName.splashScreen, page: () => const SplashScreen()),
];
