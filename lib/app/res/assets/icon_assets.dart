enum IconItems {
  rosary,
  book,
  calendar,
  esmaalhusna,
  prayer,
  qibla,
  radio,
  settings
}

extension IconItemsExtension on IconItems {
  String _path() {
    switch (this) {
      case IconItems.rosary:
        return 'rosary';
      case IconItems.book:
        return 'book';
      case IconItems.calendar:
        return 'calendar';
      case IconItems.esmaalhusna:
        return 'esmaalhusna';
      case IconItems.prayer:
        return 'prayer';
      case IconItems.qibla:
        return 'qibla';
      case IconItems.radio:
        return 'radio';
      case IconItems.settings:
        return 'settings';
    }
  }

  String get imagePath => 'assets/icons/${_path()}.png';
}
