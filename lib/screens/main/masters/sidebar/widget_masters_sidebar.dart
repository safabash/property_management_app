import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../screen_utils/responsive.dart';
import '../masters_utils/masters_utils.dart';
import 'screen_master_sidebar_controller.dart';

class WidgetMastersSidebar extends StatelessWidget {
  const WidgetMastersSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final statePageMaincontroller = Get.put(ScreenMastersSidebarController());
    return Obx(
      () => Container(
        color: Colors.white,
        width: 270,
        child: ListView.builder(
            itemBuilder: (context, index) {
              if (statePageMaincontroller.listSidebarItem[index].path ==
                  "header") {
                return Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 30),
                  child: Text(
                    statePageMaincontroller.listSidebarItem[index].name!
                        .toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                );
              } else if (statePageMaincontroller
                  .listSidebarItem[index].childrens!.isEmpty) {
                return Obx(
                  () => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 45,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: (statePageMaincontroller
                                        .listSidebarItem[index].isSelected ==
                                    false)
                                ? Colors.black54
                                : (Responsive.isDesktop(context))
                                    ? Colors.white
                                    : Colors.black54,
                            backgroundColor: (statePageMaincontroller
                                        .listSidebarItem[index].isSelected ==
                                    false)
                                ? Colors.white
                                : (Responsive.isDesktop(context))
                                    ? const Color(0xFF5570f1)
                                    : Colors.white,
                          ),
                          onPressed: () {
                            getxPushWithIdsOfMasters(
                                router: statePageMaincontroller
                                    .listSidebarItem[index].path!,
                                parameter: null,
                                arguments: null);
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Icon(statePageMaincontroller
                                      .listSidebarItem[index].icon),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(statePageMaincontroller
                                      .listSidebarItem[index].name!),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                );
              } else {
                return Obx(
                  () => ExpansionTile(
                    // backgroundColor: (_statePageMaincontroller
                    //             .listSidebarItem[index].isSelected ==
                    //         true)
                    //     ? Colors.grey[100]
                    //     : null, collapsedBackgroundColor: (_statePageMaincontroller
                    //             .listSidebarItem[index].isSelected ==
                    //         true)
                    //     ? Colors.grey[100]
                    //     : null,
                    title: Row(
                      children: [
                        Icon(statePageMaincontroller
                            .listSidebarItem[index].icon),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(statePageMaincontroller
                            .listSidebarItem[index].name!),
                      ],
                    ),
                    children: [
                      ...statePageMaincontroller
                          .listSidebarItem[index].childrens!
                          .map((e) => SizedBox(
                                height: 45,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                        foregroundColor: (e.isSelected == false)
                                            ? Colors.black54
                                            : (Responsive.isDesktop(context))
                                                ? Colors.white
                                                : Colors.black54,
                                        backgroundColor: (e.isSelected == false)
                                            ? Colors.white
                                            : (Responsive.isDesktop(context))
                                                ? const Color(0xFF5570f1)
                                                : Colors.white,
                                      ),
                                      onPressed: () {
                                        getxPushWithIdsOfMasters(
                                            router: e.path!,
                                            parameter: null,
                                            arguments: null);
                                      },
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Row(
                                            children: [
                                              Icon(e.icon),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  e.name!,
                                                  style: GoogleFonts.inter(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                              ))
                    ],
                  ),
                );
              }
            },
            itemCount: statePageMaincontroller.listSidebarItem.length),
      ),
    );
  }
}
