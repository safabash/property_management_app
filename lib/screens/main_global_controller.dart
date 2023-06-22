import 'package:get/get.dart';

class MainGlobalController extends GetxController {
  RxBool isInitApiCallProgressbarShowing = true.obs;

  RxList<String> permissionCodes = <String>[].obs;
  var userName = "Jhon Smith".obs;
  var userRole = 0.obs;
  var userimage =
      "https://s3-media0.fl.yelpcdn.com/bphoto/LfJECJ31MXixzHH3iMCD1A/348s.jpg"
          .obs;

  var appVersion = 0.obs;
  var appAndroidUrl = "".obs;
  var appIosUrl = "".obs;
  var appWindowsUrl = "".obs;

  RxBool isShowCashierShift = true.obs;
  RxBool isShowOnScreenKeyboard = true.obs;
  RxBool isEnableTaxCalculation = true.obs;
  var initialRoute = "/".obs;
  var amountRoundOff = 2.obs;
  var amountDinominaion = "Rs".obs;
  var companyName = "NEXTERP".obs;
  var companyPlace = "Calicut".obs;
  var companyVatString = "".obs;
  var companyPhone = "".obs;
  var printFooterSmall = "".obs;
  var printFooterBig = "".obs;
  RxBool allowCreditCashierview = true.obs;
  RxBool isSaleRateEditable = true.obs;
}
