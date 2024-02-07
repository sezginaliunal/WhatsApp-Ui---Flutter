import 'package:flutter/material.dart';

enum CustomBorderRadius {
  small,
  medium,
  large,
  extraLarge,
}

BorderRadius getBorderRadiusValue(CustomBorderRadius borderRadius) {
  switch (borderRadius) {
    case CustomBorderRadius.small:
      return BorderRadius.circular(8.0);
    case CustomBorderRadius.medium:
      return BorderRadius.circular(16.0);
    case CustomBorderRadius.large:
      return BorderRadius.circular(24.0);
    case CustomBorderRadius.extraLarge:
      return BorderRadius.circular(32.0);
    default:
      return BorderRadius.zero;
  }
}
