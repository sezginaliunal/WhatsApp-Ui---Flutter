import 'package:flutter/material.dart';

enum CustomIcon {
  home,
  settings,
  favorite,
  search,
  profile,
}

IconData getIconData(CustomIcon icon) {
  switch (icon) {
    case CustomIcon.home:
      return Icons.home;
    case CustomIcon.settings:
      return Icons.settings;
    case CustomIcon.favorite:
      return Icons.favorite;
    case CustomIcon.search:
      return Icons.search;
    case CustomIcon.profile:
      return Icons.person;
    default:
      return Icons.error; // Varsayılan olarak hata ikonunu dön
  }
}
