import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:well_fixed_asset_mobile/app/modules/setting/views/setting_view.dart';

import '../controllers/main_menu_controller.dart';

class MainMenuView extends GetView<MainMenuController> {
  const MainMenuView({super.key});
  @override
  Widget build(BuildContext context) {
    GetStorage storage = GetStorage();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width / 1.8,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logocaption.png'))),
                      ),
                      Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "OFFLINE",
                            style: TextStyle(
                                color: Color(0xFF158E00),
                                fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                   SingleChildScrollView(
                child: Container(
                  width: size.width,
                  height: size.height / 1.8,
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: size.width / 5,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF1D6C46)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_to_photos,
                              color: Color(0xffffffff),
                              size: 50,
                            ),
                            Text(
                              "Receiving new asset",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 5,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF1D6C46)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_a_photo_rounded,
                              color: Color(0xffffffff),
                              size: 50,
                            ),
                            Text(
                              "Assets photo\n",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 5,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF1D6C46)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Color(0xffffffff),
                              size: 50,
                            ),
                            Text(
                              "Assets survey photo",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 5,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF1D6C46)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.sim_card_outlined,
                              color: Color(0xffffffff),
                              size: 50,
                            ),
                            Text(
                              "Asset Control Card",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 5,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF1D6C46)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_pin_outlined,
                              color: Color(0xffffffff),
                              size: 50,
                            ),
                            Text(
                              "Update\ncustodian",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 5,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF1D6C46)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.numbers,
                              color: Color(0xffffffff),
                              size: 50,
                            ),
                            Text(
                              "Update asset serial no.",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 5,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF1D6C46)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_box_rounded,
                              color: Color(0xffffffff),
                              size: 50,
                            ),
                            Text(
                              "Update asset status",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 5,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF1D6C46)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo_library_outlined,
                              color: Color(0xffffffff),
                              size: 50,
                            ),
                            Text(
                              "Photo management",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 5,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF1D6C46)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_document,
                              color: Color(0xffffffff),
                              size: 50,
                            ),
                            Text(
                              "Data export\n",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                ],
              ),
            ),
           
            TextButton.icon(onPressed: null, label: Text(storage.read("username")),icon: Icon(Icons.person),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          Get.to(()=>SettingView());
        },
        shape: CircleBorder(),
        backgroundColor: Color(0xFF1D6C46),
        child: Icon(Icons.settings,color: Colors.white,size: 50,),
        
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF1D6C46),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.white),
          selectedLabelStyle: TextStyle(color: Colors.white),
          fixedColor: Colors.white,
          iconSize: 32,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ),
                label: "Logout"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.delete_forever_outlined,
                  color: Colors.white,
                ),
                label: "Clear data"),
          ]),
    );
  }
}
