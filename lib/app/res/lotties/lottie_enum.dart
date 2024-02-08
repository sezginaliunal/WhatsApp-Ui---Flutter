enum LottieItems { computer }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.computer:
        return 'computer';
    }
  }

  String get lottiePath => 'assets/lottie/${_path()}.json';
}
