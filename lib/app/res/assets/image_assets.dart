enum ImageItems { logo, group }

extension ImageItemsExtension on ImageItems {
  String _path() {
    switch (this) {
      case ImageItems.logo:
        return 'logo';
      case ImageItems.group:
        return 'group';
    }
  }

  String get imagePath => 'assets/images/${_path()}.png';
}
