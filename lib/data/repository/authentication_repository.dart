import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/login/login_screen.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/onboarding/onboarding_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final storage = GetStorage();
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRidrict();
  }

  void screenRidrict() {
    storage.writeIfNull("isFirstTime", true);

    if (storage.read("isFirstTime") == true) {
      Get.to(() => OnboardingScreen());
    } else {
      Get.offAll(() => LoginScreen());
    }
  }
}
