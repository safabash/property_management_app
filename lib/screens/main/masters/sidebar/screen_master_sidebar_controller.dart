import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../router/master_navigator_routers.dart';
import 'model/widget_sidebar_main_model.dart';
import 'model/widget_sidebar_sub_model.dart';


class ScreenMastersSidebarController extends GetxController {
  var latestRouteUrl = "".obs;
  var listSidebarItem = <WidgetSidebarMainModel>[].obs;

  sidebarInitialize() {
    listSidebarItem.add(WidgetSidebarMainModel(
        name: "dashboard".tr,
        path: RouterMasterNavigatorEvents.dashboard,
        isSelected: false,
        icon: Icons.dashboard,
        childrens: []));

    listSidebarItem.add(
      WidgetSidebarMainModel(
          name: "invoices".tr,
          path: RouterMasterNavigatorEvents.invoices,
          icon: Icons.category,
          isSelected: true,
          childrens: []
      ),
    );


   
  }

  updateSidebarIndicationsaaa(String aaa) {}
  updateSidebarIndications(String latestRouteUrlParamz) {
    var latestRouteUrlParamzWithoutParamz = latestRouteUrlParamz.split("?")[0];
    latestRouteUrl.value = latestRouteUrlParamzWithoutParamz;

    for (var element in listSidebarItem) {
      element.isSelected = false;

      if (element.path! == latestRouteUrlParamzWithoutParamz) {
        element.isSelected = true;
      }

      for (var elementChild in element.childrens!) {
        elementChild.isSelected = false;

        if (elementChild.path! == latestRouteUrlParamzWithoutParamz) {
          elementChild.isSelected = true;
        }
      }
    }

    listSidebarItem.assignAll([...listSidebarItem]);
  }

  @override
  void onInit() {
    sidebarInitialize();

    updateSidebarIndications(Get.currentRoute);
    super.onInit();
  }
}
