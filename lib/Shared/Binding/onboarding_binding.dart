import 'package:ecommerce/ViewModel/onboarding/onboarding_controller.dart';
import 'package:get/get.dart';

class BindingOnBoarding extends Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardingController());
  }
}
