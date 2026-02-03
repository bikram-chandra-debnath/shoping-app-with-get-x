import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/features/authentication/models/user_model.dart';
import 'package:shopping_app_with_getx/utils/constants/keys.dart';
import 'package:shopping_app_with_getx/utils/exceptions/firebase_auth_exception.dart';
import 'package:shopping_app_with_getx/utils/exceptions/format_exception.dart';
import 'package:shopping_app_with_getx/utils/exceptions/platform_exception.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  // variables
  final dataBase = FirebaseFirestore.instance;

  // Function to Store User data
  Future <void> saveUserRecord(UserModel user) async{
    try{

dataBase.collection(AppKeys.userCollection).doc(user.id).set(user.toJson());

    }on FirebaseAuthException catch (e) {
    throw AppFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
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