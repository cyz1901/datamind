import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'preferences_root_logic.dart';

class PreferencesRootPage extends StatelessWidget {
  const PreferencesRootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<PreferencesRootLogic>();
    final state = Get.find<PreferencesRootLogic>().state;

    return Container();
  }
}
