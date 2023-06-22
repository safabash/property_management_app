
import 'package:flutter/material.dart';

import '../../screen_utils/responsive.dart';
import 'responsive/screen_login_mobile.dart';
import 'responsive/screen_login_windows.dart';

class ScreenLoginPage extends StatelessWidget {
  const ScreenLoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Responsive(mobile: Builder(builder: (context) {
       
        return  const ScreenLoginMobile();
      }), tablet: Builder(builder: (context) {
       
        return const ScreenLoginWindows();
      }), desktop: Builder(builder: (context) {
        
        return const ScreenLoginWindows();
      })),
    );
  }
}