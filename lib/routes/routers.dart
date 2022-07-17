part of 'pagers.dart';

class Routers {
  static final List<GetPage> getAppPages = [
    GetPage(
        name: Pagers.rootPage,
        page: () => RootPage(),
        bindings: [RootBinding()],
        preventDuplicates: true,
        participatesInRootNavigator: true,
        children: [
          GetPage(
              name: Pagers.homePage,
              page: () => HomePage(),
              bindings: [HomeBinding()],
              preventDuplicates: true,
             ),
        ])
  ];

  static final List<GetPage> getPreferencesPages = [
    GetPage(
        name: Pagers.preferencesRootPage,
        page: () => PreferencesRootPage(),
        bindings: [PreferencesRootBinding()],
        preventDuplicates: true,
        participatesInRootNavigator: true,
        children: [
          GetPage(
            name: Pagers.homePage,
            page: () => HomePage(),
            bindings: [HomeBinding()],
            preventDuplicates: true,
          ),
        ])
  ];
}
