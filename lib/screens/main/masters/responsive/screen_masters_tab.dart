import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_management_app/constants/navigator_ids.dart';

import '../router/master_navigator_routers.dart';


class ScreenMastersTab extends StatelessWidget {
  const ScreenMastersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Navigator(
      reportsRouteUpdateToEngine: true,
      key: Get.nestedKey(NavigatorKeys().masterNavigator),
      initialRoute: ModalRoute.of(context)!.settings.name!,
      onGenerateRoute: (settings) => listMastersRouterOnGenerate(settings),
    ));
  }
}
