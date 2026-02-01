import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopping_app_with_getx/data/repository/authentication_repository.dart';
import 'package:shopping_app_with_getx/firebase_options.dart';
import 'package:shopping_app_with_getx/my_app.dart';

Future<void> main() async {
  /// widgets flutter binding
  WidgetsFlutterBinding.ensureInitialized();
  // flutter native splash
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding.instance);

  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthenticationRepository()));

  // portrait up the device
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}
