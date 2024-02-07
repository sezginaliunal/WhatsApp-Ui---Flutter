import 'package:get/get.dart';

import '../../res/translation/en.dart';
import '../../res/translation/ar.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en': en, 'ar': ar};
}
