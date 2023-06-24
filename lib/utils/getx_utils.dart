import 'package:get/get.dart';

class GetxUtils {
  bool getxCanPopWithNavigatorId(int id) {
    return Get.keys[id]!.currentState!.canPop();
  }
}