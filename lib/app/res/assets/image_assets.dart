enum ImageItems { qiblah }

extension ImageItemsExtension on ImageItems {
  String _path() {
    switch (this) {
      case ImageItems.qiblah:
        return 'qibla';
    }
  }

  String get imagePath => 'assets/images/${_path()}.png';
}
