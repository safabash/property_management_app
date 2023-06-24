import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/navigator_ids.dart';
import '../../../../utils/getx_utils.dart';
import '../sidebar/screen_master_sidebar_controller.dart';


getxPushWithIdsOfMasters(
    {required String router,
    required dynamic parameter,
    required dynamic arguments}) {
  final stateSidebarMaincontroller = Get.put(
      ScreenMastersSidebarController()); //it's common, then also it will add inline also
  Get.offAndToNamed(router,
      parameters: parameter,
      arguments: arguments,
      id: NavigatorKeys().masterNavigator);

  stateSidebarMaincontroller.updateSidebarIndications(router);
}

getxPopWithIdsOfMasters() {
  if (GetxUtils().getxCanPopWithNavigatorId(NavigatorKeys().masterNavigator)) {
    Get.back(id: NavigatorKeys().masterNavigator);
  } else {
    Get.back();
  }
}

getxPushWithIdsOfMain(
    {required String router,
    required dynamic parameter,
    required dynamic arguments}) {
  final stateSidebarMaincontroller = Get.put(
      ScreenMastersSidebarController()); //it's common, then also it will add inline also
  Get.offAndToNamed(router,
      parameters: parameter,
      arguments: arguments,
      id: NavigatorKeys().mainNavigator);

  stateSidebarMaincontroller.updateSidebarIndications(router);
}

getxPopWithIdsOfMain() {
  if (GetxUtils().getxCanPopWithNavigatorId(NavigatorKeys().mainNavigator)) {
    Get.back(id: NavigatorKeys().mainNavigator);
  } else {
    Get.back();
  }
}

