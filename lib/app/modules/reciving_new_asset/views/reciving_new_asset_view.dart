import 'dart:io';

import 'package:dynamic_tabbar/dynamic_tabbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli/common/utils/json_serialize/json_ast/utils/grapheme_splitter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:well_fixed_asset_mobile/app/modules/camera/views/camera_view.dart';
import 'package:well_fixed_asset_mobile/utils.dart';

import '../controllers/reciving_new_asset_controller.dart';

class RecivingNewAssetView extends GetView<RecivingNewAssetController> {
  RecivingNewAssetView({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final receiveController = Get.put(RecivingNewAssetController());
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.add,
            size: 32,
            color: Colors.white,
          ),
          title: Text(
            'Receiving new asset',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: false,
          backgroundColor: primaryColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () {
            receiveController.getImage(ImageSource.camera);
          },
          backgroundColor: primaryColor,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: primaryColor,
            iconSize: 32,
            fixedColor: Color(0xffffffff),
            unselectedItemColor: Colors.white,
            onTap: (value) {
              if (value == 0) {
                Get.back();
              } else {}
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_back_ios_new), label: "Back"),
              BottomNavigationBarItem(icon: Icon(Icons.save), label: "Save")
            ]),
        body: Container(
            child: GetBuilder(
                init: RecivingNewAssetController(),
                builder: (value) {
                  return DynamicTabBarWidget(
                      indicatorColor: primaryColor,
                      labelStyle: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.w600),
                      dynamicTabs: [
                        TabData(
                            index: 1,
                            title: Tab(
                              text: "Asset",
                            ),
                            content: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 25, horizontal: 25),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xFFB6B6B6)),
                                        borderRadius:
                                            BorderRadius.circular(14)),
                                    height: 60,
                                    width: size.width,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Asset Code",
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 15),
                                          border: InputBorder.none,
                                          suffix: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons
                                                  .qr_code_scanner_outlined))),
                                    ),
                                  ),
                                  Obx(() => receiveController
                                              .selectedImagePath.value ==
                                          ''
                                      ? Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 25),
                                          height: size.height / 2,
                                          width: size.width,
                                          color: Color(0x8CD5D5D5),
                                          padding: EdgeInsets.all(45),
                                          child: Image.asset(
                                            "assets/picture.png",
                                            width: 150,
                                          ),
                                        )
                                      : Image.file(
                                          File(receiveController
                                              .selectedImagePath.value),
                                          width: 100,
                                          height: 100,
                                        )),
                                ])),
                        TabData(
                            index: 2,
                            title: Tab(
                              text: "Sticker",
                            ),
                            content: Column(children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 25),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFFB6B6B6)),
                                    borderRadius: BorderRadius.circular(14)),
                                height: 60,
                                width: size.width,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Asset Code",
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      border: InputBorder.none,
                                      suffix: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.qr_code_scanner_outlined))),
                                ),
                              ),
                              Container(
                                height: size.height / 2,
                                width: size.width - 40,
                                color: Color(0x8CD5D5D5),
                                padding: EdgeInsets.all(45),
                                child: Image.asset(
                                  "assets/picture.png",
                                  width: 150,
                                ),
                              )
                            ])),
                        TabData(
                            index: 3,
                            title: Tab(
                              text: "SN No.",
                            ),
                            content: Column(children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 25),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFFB6B6B6)),
                                    borderRadius: BorderRadius.circular(14)),
                                height: 60,
                                width: size.width,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Asset Code",
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      border: InputBorder.none,
                                      suffix: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.qr_code_scanner_outlined))),
                                ),
                              ),
                              Container(
                                height: size.height / 2,
                                width: size.width - 40,
                                color: Color(0x8CD5D5D5),
                                padding: EdgeInsets.all(45),
                                child: Image.asset(
                                  "assets/picture.png",
                                  width: 150,
                                ),
                              )
                            ])),
                        TabData(
                            index: 4,
                            title: Tab(
                              text: "Video.",
                            ),
                            content: Column(children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 25),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFFB6B6B6)),
                                    borderRadius: BorderRadius.circular(14)),
                                height: 60,
                                width: size.width,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Asset Code",
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      border: InputBorder.none,
                                      suffix: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.qr_code_scanner_outlined))),
                                ),
                              ),
                              Container(
                                height: size.height / 2,
                                width: size.width - 40,
                                color: Color(0x8CD5D5D5),
                                padding: EdgeInsets.all(45),
                                child: Image.asset(
                                  "assets/picture.png",
                                  width: 150,
                                ),
                              )
                            ])),
                      ],
                      onTabControllerUpdated: (controller) {
                        print(controller.index);
                      });
                })));
  }
}
