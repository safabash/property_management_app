import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'internationalization/internationalization.dart';

import 'screens/authentication/login/scren_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NEXTERP',
      debugShowCheckedModeBanner: false,
      translations: Internationalization(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), // set property
      home: const ScreenLoginPage(),
    );
  }
}
