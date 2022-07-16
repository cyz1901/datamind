import 'dart:convert';

import 'package:datamind/route/pagers.dart';
import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  if (args.firstOrNull == 'multi_window') {
    final windowId = int.parse(args[1]);
    final argument = args[2].isEmpty
        ? const {}
        : jsonDecode(args[2]) as Map<String, dynamic>;
    runApp(_ExampleSubWindow(
      windowController: WindowController.fromWindowId(windowId),
      args: argument,
    ));
  } else {
    runApp(const _ExampleMainWindow());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformMenuBar(
      menus: [
        PlatformMenu(
          label: 'Flutter API Sample',
          menus: [
            PlatformMenuItemGroup(
              members: <MenuItem>[
                PlatformMenuItem(
                  label: 'About DataMind',
                  onSelected: () {

                  },
                ),
                PlatformMenuItem(
                  label: 'Check for Updates',
                  onSelected: () {

                  },
                ),
                PlatformMenuItem(
                  label: 'Preferences',
                  onSelected: () async {
                    final window = await DesktopMultiWindow.createWindow(jsonEncode({
                      'args1': 'Sub window',
                      'args2': 100,
                      'args3': true,
                      'bussiness': 'bussiness_test',
                    }));
                    window
                      ..setFrame(const Offset(0, 0) & const Size(720, 500))
                      ..center()
                      ..setTitle('Preferences')
                      ..show();
                  },
                )
              ],
            ),
          ],
        )
      ],
      body: GetMaterialApp(
        enableLog: true,
        title: 'dataMind',
        getPages: Routers.getPages,
        // theme: AppTheme.darkTheme,
        initialRoute: Pagers.homePage,
      ),
    );
  }
}
