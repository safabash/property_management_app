import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:property_management_app/screens/main/masters/screens/dashboard/screen_dashboard.dart';
import 'package:property_management_app/screens/main/masters/screens/invoices/screen_invoices.dart';
import 'package:property_management_app/settings/temp/error_page.dart';


class RouterMasterNavigatorEvents {
  static const String dashboard = "/masters/dashboard";
  static const String masters = "/masters";
  static const String invoices = "/masters/invoices";
  static const String error = "/masters/error";

}

listMastersRouterOnGenerate(RouteSettings settings) {
  String currentUrl = settings.name!.split("?")[0];

  switch (currentUrl) {
    case RouterMasterNavigatorEvents.masters:
      return GetPageRoute(
        transitionDuration: const Duration(seconds: 0),
        settings: settings,
        routeName: RouterMasterNavigatorEvents.dashboard,
        page: () => const ScreenDashBoard(),
      );
  case RouterMasterNavigatorEvents.dashboard:
      return GetPageRoute(
        transitionDuration: const Duration(seconds: 0),
        settings: settings,
        routeName: RouterMasterNavigatorEvents.dashboard,
        page: () => const ScreenDashBoard(),
      );
    case RouterMasterNavigatorEvents.invoices:
      return GetPageRoute(
        transitionDuration: const Duration(seconds: 0),
        settings: settings,
        routeName: RouterMasterNavigatorEvents.invoices,
        page: () => const ScreenInvoiceWindows(),
      );


    default:
      GetPageRoute(
        transitionDuration: const Duration(seconds: 0),
        settings: settings,
        routeName: RouterMasterNavigatorEvents.error,
        page: () => const ErrorPage(),
      );
  }
}
