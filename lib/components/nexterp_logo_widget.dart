import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/main_global_controller.dart';


class NexterpLogo extends StatelessWidget {
  const NexterpLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var stateMainGlobalcontroller = Get.put(MainGlobalController());
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 50,
              width: 50,
              child: Image.asset('/images/login_logo.jpeg')),
          Text(
           stateMainGlobalcontroller.companyName.value,
            style: GoogleFonts.orbitron(
              fontWeight: FontWeight.bold,
              color: const Color(0xff845EF1),
            ),
          )
        ],
      ),
    );
  }
}
