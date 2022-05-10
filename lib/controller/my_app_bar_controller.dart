import 'package:get/get.dart';

class MyAppBarController extends GetxController {
  static MyAppBarController get to => Get.find();

  RxInt tabBarIndex = 0.obs;
  RxBool searchViewFlag = false.obs;

  void updateTabBarIndex(int value) {
    tabBarIndex.value = value;
  }

  void updateSearchViewFlag(bool value) {
    searchViewFlag.value = value;
  }

  @override
  void onInit() {
    ever(tabBarIndex, (_) => print('tabBarIndex :: $tabBarIndex'));
    ever(searchViewFlag, (_) => print('searchViewFlag :: $searchViewFlag'));
  }
}
