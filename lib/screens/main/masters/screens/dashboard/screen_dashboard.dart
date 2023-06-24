import 'package:flutter/material.dart';

class ScreenDashBoard extends StatefulWidget {
  const ScreenDashBoard({super.key});

  @override
  State<ScreenDashBoard> createState() => _ScreenDashBoardState();
}

class _ScreenDashBoardState extends State<ScreenDashBoard> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('dashboard'),
    );
  }
}