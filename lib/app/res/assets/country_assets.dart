enum CountryImageItems { tr, en, fr, de }

extension CountryImageItemsExtension on CountryImageItems {
  String _path() {
    switch (this) {
      case CountryImageItems.tr:
        return 'tr';
      case CountryImageItems.en:
        return 'en';
      case CountryImageItems.fr:
        return 'fr';
      case CountryImageItems.de:
        return 'de';
    }
  }

  String get imagePath => 'assets/images/countries/${_path()}.png';
}
