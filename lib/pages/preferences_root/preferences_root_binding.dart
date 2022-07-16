import 'package:get/get.dart';

import 'preferences_root_logic.dart';

class PreferencesRootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreferencesRootLogic());
  }
}
