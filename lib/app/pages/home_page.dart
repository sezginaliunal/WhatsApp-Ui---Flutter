import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/app/controllers/home_controller.dart';
import 'package:whatsapp/app/pages/calls.dart';
import 'package:whatsapp/app/pages/community.dart';
import 'package:whatsapp/app/pages/updates.dart';
import 'package:whatsapp/app/res/layouts/main/main_layout.dart';
import 'package:whatsapp/app/res/widgets/list_view.dart';
import 'package:whatsapp/app/res/widgets/sliver_app.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBarWidget(),
              ];
            },
            body: const TabBarView(
              children: <Widget>[
                CommunityPage(),
                ChatsPage(),
                UpdatesPage(),
                CallsPage(),
                // İsterseniz daha fazla sekme içeriği ekleyebilirsiniz
              ],
            ),
          ),
        ),
      ),
    );
  }
}
