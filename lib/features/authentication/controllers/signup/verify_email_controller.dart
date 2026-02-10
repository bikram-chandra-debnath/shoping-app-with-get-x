import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/common/widgets/screen/success_screen.dart';
import 'package:shopping_app_with_getx/data/repository/authentication_repository.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';
import 'package:shopping_app_with_getx/utils/popups/snackbar_helpers.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();
@override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  // send email verification link to current user
  Future<void> sendEmailVerification() async {
    try {
     await AuthenticationRepository.instance.sendEmailVerification();
      AppSnackbarHelper.successSnackBar(
        title: "Verification Email Sent",
        message: "A verification email has been sent to your email address. Please check your inbox and verify your email.",
      );
    } catch (e) {
      AppSnackbarHelper.errorSnackBar(title: "Error", message: e.toString());
    }
  }

  // Timer to automatically redirect on email verification 
  void setTimerForAutoRedirect() {
    Timer.periodic(Duration(seconds: 1), (timer) async {

     await FirebaseAuth.instance.currentUser!.reload();
     final user = FirebaseAuth.instance.currentUser;

     if(user?.emailVerified ?? false){

      timer.cancel();
      Get.off(()=> SuccessScreen(
        title: AppTexts.accountCreatedSuccessTitle, 
        subTitle:AppTexts.accountCreatedSuccessSubtitle, 
        image: AppImages.successfulPayment, 
        onTap: ()=> AuthenticationRepository.instance.screenRidrict()));
     }




      
    });
  }

// Manually check email verification status
  Future <void> checkEmailVerificationStatus()async {
    try{
      final currentUser = FirebaseAuth.instance.currentUser;

      if(currentUser!= null && currentUser.emailVerified){
        Get.offAll(
          () => SuccessScreen(
            title: AppTexts.accountCreatedSuccessTitle,
            subTitle: AppTexts.accountCreatedSuccessSubtitle,
            image: AppImages.successfulPayment,
            onTap: () => AuthenticationRepository.instance.screenRidrict(),
          ),
        );
      }
       else{
        AppSnackbarHelper.warnignSnackBar(title: "Email Not Verified", message: "Please verify your email to continue.");
      }

    }
    catch(e){
      AppSnackbarHelper.errorSnackBar(title: "Error", message: e.toString());
    }
  }
}
