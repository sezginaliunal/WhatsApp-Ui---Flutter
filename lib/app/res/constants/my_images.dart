import 'package:flutter/material.dart';

class MyAssetImages extends StatelessWidget {
  const MyAssetImages({Key? key, required this.imagePath, this.width})
      : super(key: key);
  final String imagePath;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
    );
  }
}
