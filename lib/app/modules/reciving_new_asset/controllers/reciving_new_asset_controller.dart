import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RecivingNewAssetController extends GetxController {
  //TODO: Implement RecivingNewAssetController

  final count = 0.obs;
  late TabController tabController;
  final bottomTabIndex = 0.obs;
  final selectedImagePath = ''.obs;
  final selectedImageSize = ''.obs;
  @override
  void onInit() {
    bottomTabIndex.value = 0;
    super.onInit();
  }

  void changeIndex(index) {
    bottomTabIndex.value = index;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getImage(ImageSource imageSource) async {
    final pickerFile = await ImagePicker().pickImage(source: imageSource);

    if (pickerFile != null) {
      selectedImagePath.value = pickerFile.path;
    } else {
      Get.snackbar("Error", "No Image selected",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Color(0xFFF82B28),
          colorText: Colors.white);
    }
  }
}
