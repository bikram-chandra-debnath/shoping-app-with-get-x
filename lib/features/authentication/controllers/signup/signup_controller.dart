import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/data/repository/authentication_repository.dart';
import 'package:shopping_app_with_getx/data/repository/user/user_repository.dart';
import 'package:shopping_app_with_getx/features/authentication/models/user_model.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/signup/verify_email.dart';
import 'package:shopping_app_with_getx/utils/helpers/network_manager.dart';
import 'package:shopping_app_with_getx/utils/popups/full_screen_loader.dart';
import 'package:shopping_app_with_getx/utils/popups/snackbar_helpers.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // variables
  final _authRepository = Get.put(AuthenticationRepository());
  final signUpFormKey = GlobalKey<FormState>();
  RxBool ispasswordInvisiable = true.obs;
  RxBool privacyPolicy = false.obs;

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();

  // Function  to register the user wiht email and password

  Future<void> registerUser() async {
    try {

      // start loading
      AppFullScreenLoader.openLoadingDialog(
        "We are processing your information...",
      );
      
      // check internet connectivity
      bool isConnected =await NetworkManager.instance.isConnected();

      if (!isConnected) {
        AppFullScreenLoader.stopLoading();
        AppSnackbarHelper.warnignSnackBar(title: "No Internet Connection");
        return;
      }

      // check privacyPolicy
      if (!privacyPolicy.value) {
        AppFullScreenLoader.stopLoading();
        AppSnackbarHelper.warnignSnackBar(
          title: "Accpet Privacy Policy",
          message:
              "In order to create account, you must have to read and accept the Privacy Policy & Terms of use.",
        );
        return;
      }

      // form validation
      if (!signUpFormKey.currentState!.validate()) {
         AppFullScreenLoader.stopLoading();
        return;
      }
    
      // register the user using firebase authentication
      UserCredential userCredential = await _authRepository.registerUser(
        email.text.trim(),
        password.text.trim(),
      );
      
      // create user model
      UserModel userModel = UserModel(
        id: userCredential.user!.uid,
        userName: firstName.text + lastName.text,
        email: email.text.trim(),
        firstName: firstName.text,
        lastName: lastName.text,
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: "",
      );
      
      // save user code
      final usersRepository = Get.put(UserRepository());
      await usersRepository.saveUserRecord(userModel);

      // success message
      AppSnackbarHelper.successSnackBar(
        title: "Conratulation",
        message: "Your account has been created! Verify emil to continue.",
      );
      
      // stop loading
      AppFullScreenLoader.stopLoading();

      // redriect to verify email screen
      Get.to(() => VerifyEmailScreen(email:  email.text));
    } catch (e) {
      
      // stop loading
      AppFullScreenLoader.stopLoading();
      AppSnackbarHelper.errorSnackBar(title: "Error", message: e.toString());
    }
  }
}
