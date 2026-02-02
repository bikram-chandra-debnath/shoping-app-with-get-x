import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/utils/popups/snackbar_helpers.dart';


// Manage the network contivity status and provides methods to check and handle connectivity changes.
class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

final Connectivity _connectivity= Connectivity();

late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

// initialize the netwoek managet and set up a stream to continually check the connection status
@override
void onInit(){
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  // Upadtee the connection status based on changes in connectivity and show a relevant pop up for no internet

  Future < void> _updateConnectionStatus (List<ConnectivityResult>result)async{
    _connectionStatus.value = result[0];
     
     if(_connectionStatus.value == ConnectivityResult.none){
      AppSnackbarHelper.warnignSnackBar(title: "No Internet Connection");
     }
  }

  // Check the Internet connection status
  // Returns "True" if connected, "false" otherwise

  Future <bool> isConnected()async{
    try {
      final result = await _connectivity.checkConnectivity();
      if(result[0]== ConnectivityResult.none){
        return false;
      }
      else{
        return true;
      }
    }on PlatformException catch (_){
      return false;
    }
  }

  // Dispose or close the active connectivity stream

  @override
  void onClose(){
    super.onClose();
    _connectivitySubscription.cancel();
  }


}