import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/app/res/constants/paddings.dart';
import 'package:whatsapp/app/res/constants/strings.dart';
import 'package:whatsapp/app/res/widgets/list_view.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.camera_alt_rounded,
          color: Get.iconColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(AppStrings.status, style: Get.textTheme.titleLarge),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage:
                    NetworkImage("https://robohash.org/Miles.png?set=set4"),
              ),
              title:
                  Text(AppStrings.myStatus, style: Get.textTheme.labelMedium),
              subtitle:
                  Text(AppStrings.statusDesc, style: Get.textTheme.labelSmall),
            ),
            Padding(
              padding: getPaddingValue(CustomPadding.small),
              child: Text(AppStrings.recentUpdates,
                  style: Get.textTheme.labelSmall),
            ),
            ListView.builder(
              itemCount: userList.length - 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                final data = userList[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(data.image),
                  ),
                  title: Text(data.name, style: Get.textTheme.labelMedium),
                  subtitle:
                      Text(data.lastChatTime, style: Get.textTheme.labelSmall),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
