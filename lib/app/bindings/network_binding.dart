import 'package:get/get.dart';
import 'package:whatsapp/app/controllers/network_controller.dart';

class NetworkBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController>(() => NetworkController());
    // Get.put<HomeController>(HomeController());
  }
}
