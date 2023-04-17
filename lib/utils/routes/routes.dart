import 'package:eat_fresh_app/view/welcome/welcome_bindings.dart';
import 'package:eat_fresh_app/view/welcome/welcome_screen.dart';
import 'package:get/get.dart';

import '../../view/splash/splash_binding.dart';
import '../../view/splash/splash_screen.dart';
import 'routes_name.dart';

GetPage getPage({String? name, GetPageBuilder? page, Bindings? binding}) {
  return GetPage(
    name: name!,
    page: page!,
    binding: binding,
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 400),
  );
}

List<GetPage> pages = [
  getPage(name: RoutesName.splashScreen, page: () => const SplashScreen(), binding: SplashBindings()),
  getPage(name: RoutesName.welcomeScreen, page: () => const WelcomeScreen(), binding: WelcomeBindings()),
];
