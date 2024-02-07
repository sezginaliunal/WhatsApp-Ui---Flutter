// views/main_layout.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume/app/controllers/network_controller.dart';
import '../../../controllers/main_controller.dart';

class MainLayout extends GetView<MainController> {
  final Widget child;

  MainLayout({Key? key, required this.child}) : super(key: key);
  final NetworkController networkController = Get.find<NetworkController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => networkController.connectionStatus.value == 0
            ? const Text('No Connection')
            : child));
  }
}
