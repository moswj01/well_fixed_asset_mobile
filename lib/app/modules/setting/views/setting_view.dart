import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:well_fixed_asset_mobile/utils.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  SettingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.settings,
            size: 32,
            color: Colors.white,
          ),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: false,
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
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Image Resolution",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              DropdownButton(
                  isExpanded: true,
                  itemHeight: 50,
                  padding: EdgeInsets.all(10),
                  borderRadius: BorderRadius.circular(12),
                  hint: Text("Image Resolutions"),
                  items: ["640x480", "720x720", "1280x720", "1920x1080"]
                      .map<DropdownMenuItem<String>>(
                    (e) {
                      return DropdownMenuItem(
                        child: Text(
                          e,
                          style: TextStyle(fontSize: 16),
                        ),
                        value: e,
                      );
                    },
                  ).toList(),
                  onChanged: (val) {}),
              SizedBox(
                height: 20,
              ),
              Text(
                "Video Resolution",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              DropdownButton(
                  isExpanded: true,
                  itemHeight: 50,
                  padding: EdgeInsets.all(10),
                  borderRadius: BorderRadius.circular(12),
                  hint: Text("Video Resolutions"),
                  items:
                      ["Low", "Medium", "High"].map<DropdownMenuItem<String>>(
                    (e) {
                      return DropdownMenuItem(
                        child: Text(
                          e,
                          style: TextStyle(fontSize: 16),
                        ),
                        value: e,
                      );
                    },
                  ).toList(),
                  onChanged: (val) {}),
              SizedBox(
                height: 20,
              ),
              Text(
                "Server IP Address",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: "Enter IP Address"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Port",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: "Enter Port"),
                ),
              ),
            ],
          ),
        ));
  }
}
