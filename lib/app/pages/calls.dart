import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/app/res/colors/app_colors.dart';
import 'package:whatsapp/app/res/constants/paddings.dart';
import 'package:whatsapp/app/res/constants/strings.dart';
import 'package:whatsapp/app/res/widgets/list_view.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.call,
          color: Get.iconColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColor.primaryColor,
                child: Icon(Icons.share_rounded, color: Get.iconColor),
              ),
              title: Text(AppStrings.createCallLink,
                  style: Get.textTheme.labelMedium),
              subtitle:
                  Text(AppStrings.shareLink, style: Get.textTheme.labelSmall),
            ),
            Padding(
              padding: getPaddingValue(CustomPadding.small),
              child: Text(AppStrings.recent, style: Get.textTheme.labelSmall),
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
                  trailing: Icon(
                      data.incomeCall ?? false ? Icons.call : Icons.video_call,
                      color: AppColor.primaryColor),
                  subtitle: Row(
                    children: [
                      data.incomeCall ?? false
                          ? const Icon(
                              Icons.call_made_rounded,
                              size: 15,
                              color: AppColor.lightGreenColor,
                            )
                          : const Icon(
                              Icons.call_received_rounded,
                              size: 15,
                              color: AppColor.redColor,
                            ),
                      Text(data.lastChatTime, style: Get.textTheme.labelSmall)
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
