import 'package:resume/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coin List'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.coins.length,
          itemBuilder: (context, index) {
            final coin = controller.coins[index];
            return ListTile(
              onTap: () => controller.postVote(coin.sId ?? ''),
              title: Text(coin.vote?.toString() ?? '0',
                  style: TextStyle(color: coin.color)),
              subtitle: Text('Price: ${coin.price?.toString() ?? 'N/A'}'),
            );
          },
        ),
      ),
    );
  }
}
