import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_management_app/router/router.dart';

class ScreenProperty extends StatefulWidget {
  const ScreenProperty({super.key});

  @override
  State<ScreenProperty> createState() => _ScreenPropertyState();
}

class _ScreenPropertyState extends State<ScreenProperty> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Get.toNamed(RouterEvents().masters);
          },
          child: const Text('masters')),
    );
  }
}
