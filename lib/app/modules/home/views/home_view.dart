import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFEEFFF0),
              Color(0xFFE0E0E0),
              Color(0xFFE5FFEA),
            ]),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/logos.png",
                      width: 120,
                    ),
                    Text(
                      "Well-Fixed Asset Mobile Application",
                      style: TextStyle(
                          color: Color(0xFF1E4E28),
                          fontSize: 38,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Platform.isAndroid
                        ? Container(
                            width: size.width,
                            padding: EdgeInsets.only(right: 35),
                            child: Text(
                              "Android",
                              style: TextStyle(
                                  color: Color(0xFF1E4E28), fontSize: 16),
                              textAlign: TextAlign.right,
                            ))
                        : Container(
                            width: size.width,
                            padding: EdgeInsets.only(right: 35),
                            child: Text(
                              "iOS",
                              style: TextStyle(
                                  color: Color(0xFF1E4E28), fontSize: 16),
                              textAlign: TextAlign.right,
                            )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      "Sign in to continue",
                      style: TextStyle(
                          color: Color(0xFF1E4E28),
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 45,
                      width: size.width,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        
                          color: Color(0xffffffff)),
                      child: TextField(
                        controller: homeController.username,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1E4E28),),borderRadius: BorderRadius.circular(12)),
                            hintText: "Username",
                            contentPadding: EdgeInsets.all(10),
                            hintStyle: TextStyle(color: Color(0xEF868686)),
                            prefixIcon: Icon(Icons.person_rounded)),
                      ),
                    ),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        width: size.width,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color(0xFF167031),
                            borderRadius: BorderRadius.circular(12)),
                        child: TextButton.icon(
                            onPressed: () {
                              homeController.login();
                            },
                            label: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 22, color: Color(0xffffffff)),
                            ))),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, ),
                        width: size.width,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color(0xffeb6d00),
                            borderRadius: BorderRadius.circular(12)),
                        child: TextButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Setting",
                              style: TextStyle(
                                  fontSize: 22, color: Color(0xffffffff)),
                            ))),
                   
                  ],
                ),
              ),
               Container(
                      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                      width: size.width,
                      child: Text("www.wellfixedasset.com",textAlign: TextAlign.center,),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
