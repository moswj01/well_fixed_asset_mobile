import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:well_fixed_asset_mobile/app/modules/main_menu/views/main_menu_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
 GetStorage storage = GetStorage();
  TextEditingController username = TextEditingController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

 login(){
  print(username.text);
  storage.write('username', username.text);
  Get.to(()=>MainMenuView());
  
 }
}
