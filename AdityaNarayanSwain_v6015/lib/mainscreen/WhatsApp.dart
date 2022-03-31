import 'package:adityanarayanswain_v6015/Localization/apptranslation.dart';
import 'package:adityanarayanswain_v6015/calls_list/Callmainpage.dart';
import 'package:adityanarayanswain_v6015/Camera_list/CameraPage.dart';
import 'package:adityanarayanswain_v6015/chats_list/Chatsmainscreen.dart';
import 'package:adityanarayanswain_v6015/status_list/Statusmain.dart';
import 'package:flutter/material.dart';
import '../Settings/srttingscreen.dart';
import '../constants/ColorConstants.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key, required String title}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  late TabController _tabController;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double tabWidth = width / 5;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.teal_dark_green,
          actions: [
            Icon(Icons.search),
            _selectedIndex == 1
                ? PopupMenuButton(
                    icon: const Icon(Icons.more_vert),
                    onSelected: (result) {
                      if (result == 6) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsScreen()),
                        );
                      }
                    },
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text(
                                AppTranslations.of(context)!.text("menu_1_1")),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: Text(
                                AppTranslations.of(context)!.text("menu_1_2")),
                            value: 2,
                          ),
                          PopupMenuItem(
                            child: Text(
                                AppTranslations.of(context)!.text("menu_1_3")),
                            value: 3,
                          ),
                          PopupMenuItem(
                            child: Text(
                                AppTranslations.of(context)!.text("menu_1_4")),
                            value: 4,
                          ),
                          PopupMenuItem(
                            child: Text(
                                AppTranslations.of(context)!.text("menu_1_5")),
                            value: 5,
                          ),
                          PopupMenuItem(
                            child: Text(
                                AppTranslations.of(context)!.text("menu_1_6")),
                            value: 6,
                          ),
                        ])
                : _selectedIndex == 2
                    ? PopupMenuButton(
                onSelected: (result) {
                  if (result == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingsScreen()),
                    );
                  }
                },
                        icon: Icon(Icons.more_vert),
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text(AppTranslations.of(context)!
                                    .text("menu_2_1")),
                                value: 1,
                              ),
                              PopupMenuItem(
                                child: Text(AppTranslations.of(context)!
                                    .text("menu_2_2")),
                                value: 2,
                              )
                            ])
                    : PopupMenuButton(
                onSelected: (result) {
                  if (result == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingsScreen()),
                    );
                  }
                },
                        icon: Icon(Icons.more_vert),
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text(AppTranslations.of(context)!
                                    .text("menu_3_1")),
                                value: 1,
                              ),
                              PopupMenuItem(
                                child: Text(AppTranslations.of(context)!
                                    .text("menu_3_2")),
                                value: 2,
                              ),
                            ]),
          ],
          title: Text("WhatsApp"),
          bottom: TabBar(
            onTap: (int selected) {
              setState(() {
                _selectedIndex = selected;
              });
            },
            // controller: _tabController,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Container(
                width: 30,
                alignment: Alignment.center,
                child: Icon(
                  Icons.camera_alt,
                  size: 20.0,
                ),
              ),
              Container(
                  width: tabWidth,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(AppTranslations.of(context)!.text("tab_chats"))),
              Container(
                  width: tabWidth,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(AppTranslations.of(context)!.text("tab_status"))),
              Container(
                  width: tabWidth,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(AppTranslations.of(context)!.text("tab_call"))),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsListPage(),
            StatusScreen(),
            CallsListPage()
          ],
        ),
      ),
    );
  }
}
