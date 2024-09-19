import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {

  void navigateToDestination() {
    Get.toNamed<void>(Routes.ONBOARD);
  }

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2), navigateToDestination);

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
