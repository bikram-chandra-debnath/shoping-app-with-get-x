import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/login/login_screen.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:shopping_app_with_getx/utils/exceptions/firebase_auth_exception.dart';
import 'package:shopping_app_with_getx/utils/exceptions/format_exception.dart';
import 'package:shopping_app_with_getx/utils/exceptions/platform_exception.dart';
import 'package:shopping_app_with_getx/utils/popups/snackbar_helpers.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final localStorage = GetStorage();
  final _auth = FirebaseAuth.instance;
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRidrict();
  }

  void screenRidrict() {
    localStorage.writeIfNull("isFirstTime", true);

    if (localStorage.read("isFirstTime") == true) {
      Get.to(() => OnboardingScreen());
    } else {
      Get.offAll(() => LoginScreen());
    }
  }


  
  Future<UserCredential> registerUser( String email, password) async {
  try {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
  } on FirebaseAuthException catch (e) {
    throw AppFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    if (e.code == 'email-already-in-use') {
    
  }

    throw AppFirebaseAuthException(e.code).message;
  } on FormatException {
    throw AppFormatException();
  } on PlatformException catch (e) {

    throw AppPlatformException(e.code).message;       
  } catch (e) {
    throw Exception("Something went wrong. Please try again");
  }
}
}


