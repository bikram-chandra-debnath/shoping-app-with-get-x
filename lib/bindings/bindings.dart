
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/utils/helpers/network_manager.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }

} 


