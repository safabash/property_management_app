import 'package:get/get.dart';
import 'package:property_management_app/screens/main/screen_main_property.dart';

import '../screens/main/masters/screen_masters.dart';

List<GetPage> listRoutes = <GetPage>[
  // GetPage(
  //     name: RouterEvents().homeRouterPath, page: () => const ScreenSplash()),
  GetPage(name: RouterEvents().properyPath, page: () => const ScreenProperty()),
  // GetPage(
  //     name: RouterEvents().homeRouterPath,
  //     page: () => const ScreenMainScreeen(),
  //     middlewares: [LoginMiddleware()]),
  GetPage(
    name: RouterEvents().masters,
    page: () => const ScreenMasters(),
  ),
  // GetPage(
  //     name: RouterEvents().cashier,
  //     page: () => const ScreenCashierDetailedView(),
  //     middlewares: [LoginMiddleware()]),
];

class RouterEvents {
  final String properyPath = "/propery";
  final String loginRouterPath = "/login";
  // final String mainRouterPath = "/main";
  final String masters = "/masters";
}
