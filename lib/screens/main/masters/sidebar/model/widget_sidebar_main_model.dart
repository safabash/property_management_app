import 'package:flutter/cupertino.dart';

import 'widget_sidebar_sub_model.dart';


class WidgetSidebarMainModel {
  String? name;
  String? path;
  bool? isSelected;
  IconData? icon;
  List<WidgetSidebarSubModel>? childrens;
  WidgetSidebarMainModel({
    required this.name,
    required this.path,
    required this.isSelected,
    required this.childrens,
    required this.icon,
  });
}
/*
path if header then just show header only otherwise there will be click action also 
 */
