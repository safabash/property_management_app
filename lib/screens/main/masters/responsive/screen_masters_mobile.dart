import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/navigator_ids.dart';
import '../router/master_navigator_routers.dart';


class ScreenMastersMobile extends StatelessWidget {
  const ScreenMastersMobile({super.key});

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
