import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/app/res/colors/app_colors.dart';
import 'package:whatsapp/app/res/constants/strings.dart';

class SliverAppBarWidget extends StatelessWidget {
  SliverAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Get.theme.primaryColor,
      title: Text(AppStrings.appName, style: Get.textTheme.titleMedium),
      centerTitle: false,
      actions: <Widget>[
        IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {},
            color: Get.iconColor),
        IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Get.iconColor),
        IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
            color: Get.iconColor),
      ],
      floating: true,
      pinned: true,
      snap: true,
      bottom: TabBar(
        labelColor: AppColor.whiteColor,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: AppColor.whiteColor,
        tabs: _tabs,
        unselectedLabelColor: AppColor.whiteColor.withOpacity(.5),
      ),
    );
  }

  final _tabs = <Widget>[
    const Tab(
      icon: Icon(
        Icons.group_sharp,
      ),
    ),
    const Tab(
      text: AppStrings.chats,
    ),
    const Tab(
      text: AppStrings.updates,
    ),
    const Tab(
      text: AppStrings.calls,
    ),
  ];
}
