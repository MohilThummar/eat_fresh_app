import 'package:eat_fresh_app/view/welcome/welcome_controller.dart';
import 'package:get/get.dart';

class WelcomeBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<WelcomeController>(WelcomeController());
  }
}
