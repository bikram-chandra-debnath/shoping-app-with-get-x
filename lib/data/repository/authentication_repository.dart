import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/login/login_screen.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/signup/verify_email.dart';
import 'package:shopping_app_with_getx/navigation_menu.dart';
import 'package:shopping_app_with_getx/utils/exceptions/firebase_auth_exception.dart';
import 'package:shopping_app_with_getx/utils/exceptions/format_exception.dart';
import 'package:shopping_app_with_getx/utils/exceptions/platform_exception.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final localStorage = GetStorage();
  final auth = FirebaseAuth.instance;
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRidrict();
  }

  // Function to check the authentication state and redirect to the appropriate screen
  void screenRidrict() {
    final user = auth.currentUser;

    if (user != null) {
      if (user.emailVerified) {
        // if user is already logged in and email is verified then go to onboarding screen
        Get.offAll(() => NavigationMenu());
      } else {
        // if user is already logged in but email is not verified then go to verify email screen
        Get.offAll(() => VerifyEmailScreen(email: user.email));
      }
    } else {
      // if user is already logged in and email is verified then go to onboarding screen
      localStorage.writeIfNull("isFirstTime", true);

      if (localStorage.read("isFirstTime") == true) {
        Get.to(() => OnboardingScreen());
      } else {
        Get.offAll(() => LoginScreen());
      }
    }
  }

  // Function to register user with email and password
  Future<UserCredential> registerUser(String email, password) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FormatException {
      throw AppFormatException();
    } catch (e) {
      throw Exception("Something went wrong. Please try again");
    }
  }

  // Function to send email verification to current user
  Future<void> sendEmailVerification() async {
    try {
      await auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } on FormatException {
      throw AppFormatException();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  // // Function to logout user
  Future<void> logout() async {
    try {
      await auth.signOut();
      Get.offAll(() => LoginScreen());
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FormatException {
      throw AppFormatException();
    } catch (e) {
      throw Exception("Something went wrong. Please try again");
    }
  }
}
