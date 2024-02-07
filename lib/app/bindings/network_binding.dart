import 'package:resume/app/controllers/network_controller.dart';

import 'package:get/get.dart';

class NetworkBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController>(() => NetworkController());
    // Get.put<HomeController>(HomeController());
  }
}
