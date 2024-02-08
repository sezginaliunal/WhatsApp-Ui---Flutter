import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/app/res/assets/image_assets.dart';
import 'package:whatsapp/app/res/boxes/height.dart';
import 'package:whatsapp/app/res/colors/app_colors.dart';
import 'package:whatsapp/app/res/constants/my_images.dart';
import 'package:whatsapp/app/res/constants/paddings.dart';
import 'package:whatsapp/app/res/constants/strings.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: getPaddingValue(CustomPadding.medium),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyAssetImages(
                imagePath: ImageItems.group.imagePath,
                width: Get.width / 2,
              ),
              Text(
                AppStrings.communityTitle,
                style: Get.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const HeightBoxesItems.heightTen(),
              Text(AppStrings.communityDescription,
                  style: Get.textTheme.labelSmall?.copyWith(
                      color: AppColor.blackColor, fontWeight: FontWeight.w100)),
              const HeightBoxesItems.heightTen(),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.chevron_right_rounded,
                      color: AppColor.lightGreenColor),
                  label: Text(
                    AppStrings.communityExample,
                    style: Get.textTheme.labelMedium
                        ?.copyWith(color: AppColor.lightGreenColor),
                  )),
              const HeightBoxesItems.heightTen(),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(AppStrings.communityCreate,
                      style: Get.textTheme.labelLarge))
            ],
          ),
        ),
      ),
    );
  }
}
