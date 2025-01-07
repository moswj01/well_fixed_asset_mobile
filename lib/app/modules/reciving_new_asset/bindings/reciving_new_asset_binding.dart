import 'package:get/get.dart';

import '../controllers/reciving_new_asset_controller.dart';

class RecivingNewAssetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecivingNewAssetController>(
      () => RecivingNewAssetController(),
    );
  }
}
