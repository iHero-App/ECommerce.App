import 'package:ecommerce/ViewModel/CompleteProfile/complete_profile_controller.dart';
import 'package:get/get.dart';

class CompleteProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CompleteProfileController());
  }
}
