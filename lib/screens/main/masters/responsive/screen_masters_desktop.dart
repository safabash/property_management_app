import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_management_app/constants/navigator_ids.dart';

import '../router/master_navigator_routers.dart';
import '../sidebar/widget_masters_sidebar.dart';

class ScreenMastersDesktop extends StatelessWidget {
  const ScreenMastersDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Get.offAndToNamed("/");
          },
          child: Text(
            "Masters",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
//         leading: IconButton(onPressed: (){

// Get.back();
// // Get.offAllNamed("/");

//         }, icon: Icon(Icons.close)),
        iconTheme: IconThemeData(
          color: Colors.grey, //change your color here
        ),
      ),
      body: Row(
        children: [
          const WidgetMastersSidebar(),
          Expanded(
            child: Navigator(
              reportsRouteUpdateToEngine: true,
              key: Get.nestedKey(NavigatorKeys().masterNavigator),
              initialRoute: ModalRoute.of(context)!.settings.name!,
              onGenerateRoute: (settings) =>
                  listMastersRouterOnGenerate(settings),
            ),
          ),
        ],
      ),
    );
  }
}
