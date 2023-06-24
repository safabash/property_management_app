import 'package:flutter/material.dart';
import 'package:property_management_app/screens/main/masters/masters_utils/masters_utils.dart';
import 'package:property_management_app/screens/screen_utils/responsive.dart';

import 'responsive/screen_masters_desktop.dart';
import 'responsive/screen_masters_mobile.dart';
import 'responsive/screen_masters_tab.dart';


class ScreenMasters extends StatelessWidget {
  const ScreenMasters({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // onWillPop: null,
      onWillPop: () {
        getxPopWithIdsOfMasters();

        return Future.value(false);
      },
      child: const Responsive(
          mobile: ScreenMastersMobile(),
          tablet: ScreenMastersTab(),
          desktop: ScreenMastersDesktop()),
    );
  }
}