import 'package:flutter/cupertino.dart';

class WidgetSidebarSubModel {
  String? name;
  String? path;
  bool? isSelected;
  IconData? icon;
  WidgetSidebarSubModel({
    required this.name,
    required this.path,
    required this.isSelected,
    required this.icon,
  });
}
