import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/app/data/models/users.dart';
import 'package:whatsapp/app/res/boxes/widths.dart';
import 'package:whatsapp/app/res/colors/app_colors.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Get.iconColor,
        ),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          final data = userList[index];
          return ListTile(
            title: Text(data.name, style: Get.textTheme.labelMedium),
            subtitle: Row(
              children: [
                Icon(
                  Icons.check,
                  size: 10,
                  color: data.isSeen ?? false
                      ? AppColor.blueColor
                      : AppColor.greyColor,
                ),
                const WidthBoxesItems.widthFive(),
                Text(data.lastChatText, style: Get.textTheme.labelSmall),
              ],
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(data.image),
            ),
            trailing: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.vertical,
              children: [
                Text(
                  data.lastChatTime,
                  style: Get.textTheme.labelSmall,
                ),
                data.isMute ?? false
                    ? const Icon(
                        Icons.volume_off,
                        color: AppColor.greyColor,
                      )
                    : const SizedBox.shrink()
              ],
            ),
          );
        },
      ),
    );
  }
}

final List<Users> userList = [
  Users(
      name: "John",
      lastChatText: "How are you ?",
      lastChatTime: "15:25",
      image: "https://robohash.org/Sheldon.png?set=set4",
      isMute: true,
      incomeCall: true),
  Users(
      name: "Terrill",
      lastChatText: "Hey",
      lastChatTime: "12:12",
      image: "https://robohash.org/Terrill.png?set=set4"),
  Users(
      name: "Miles",
      lastChatText: "😘😘😘😘😘",
      lastChatTime: "15:25",
      image: "https://robohash.org/Miles.png?set=set4",
      isSeen: true,
      incomeCall: true),
  Users(
      name: "Mavis",
      lastChatText: "How are you ?",
      lastChatTime: "15:25",
      image: "https://robohash.org/Mavis.png?set=set4"),
  Users(
      name: "Alison",
      lastChatText: "How are you ?",
      lastChatTime: "15:25",
      image: "https://robohash.org/Alison.png?set=set4",
      isSeen: true),
  Users(
      name: "Ewell",
      lastChatText: "How are you ?",
      lastChatTime: "15:25",
      image: "https://robohash.org/Oleta.png?set=set4"),
  Users(
      name: "Oleta",
      lastChatText: "How are you ?",
      lastChatTime: "15:25",
      image: "https://robohash.org/Ewell.png?set=set4"),
  Users(
      name: "Demetrius",
      lastChatText: "How are you ?",
      lastChatTime: "15:25",
      image: "https://robohash.org/Demetrius.png?set=set4"),
  Users(
      name: "Eleanora",
      lastChatText: "How are you ?",
      lastChatTime: "15:25",
      image: "https://robohash.org/Eleanora.png?set=set4"),
];
