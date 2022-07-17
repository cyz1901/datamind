import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/pagers.dart';
import 'root_logic.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<RootLogic>();
    final state = Get.find<RootLogic>().state;

    return GetRouterOutlet.builder(
      // delegate: Get.nestedKey(null),
      builder: (BuildContext context) {
        return Scaffold(

          body: GetRouterOutlet(
            // delegate: Get.nestedKey(null),
            initialRoute: Pagers.homePage,
            anchorRoute: Pagers.rootPage,
          ),
        );
      },
    );
  }
}
