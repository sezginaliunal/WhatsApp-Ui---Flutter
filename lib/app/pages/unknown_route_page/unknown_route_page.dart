import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../res/layouts/main/main_layout.dart';

import '../../controllers/unknown_route_controller.dart';

class UnknownRoutePage extends GetView<UnknownRouteController> {
  const UnknownRoutePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: const Text('UnknownRoute'),
    );
  }
}
