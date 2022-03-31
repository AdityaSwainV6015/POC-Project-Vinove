import 'package:adityanarayanswain_v6015/Settings/Chats/settingschats.dart';
import 'package:adityanarayanswain_v6015/constants/ColorConstants.dart';
import 'package:flutter/material.dart';
import 'settingmenu.dart';
import 'Chats/laguageradio.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
        ),
        backgroundColor: AppColors.teal_dark_green,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
            },
            child: ListTile(
              title: Text(
                'Aditya',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/img_1.png'),
                radius: 25,
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text(
                  'Busy',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.crop_square,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
          Divider(
            endIndent: 5,
            indent: 5,
          ),
          SettingOption(
              title: 'Account',
              subtitle: 'Privacy, security, change number',
              leading: Icon(Icons.vpn_key_rounded),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LanguageSelectorPage(),
                  ),
                );
              }),
          SettingOption(
              title: 'Chats',
              subtitle: 'Theme, wallpaper, chat history',
              leading: Icon(Icons.chat_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Chats(title: ''),
                  ),
                );
              }),
          SettingOption(
              title: 'Notifications',
              subtitle: 'Message, grooup & call tone',
              leading: Icon(Icons.notifications),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Chats(title: ""),
                  ),
                );
              }),
          SettingOption(
              title: 'Storage and Data',
              subtitle: 'Network usage, auto-download',
              leading: Icon(Icons.storage),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Chats(
                      title: '',
                    ),
                  ),
                );
              }),
          SettingOption(
              title: 'Help',
              subtitle: 'Help centre, contact us, privacy policy',
              leading: Icon(Icons.help_outline_outlined),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Chats(
                      title: '',
                    ),
                  ),
                );
              }),
          SettingOption(
              title: 'Invite a friend',
              leading: Icon(Icons.call),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Chats(
                      title: '',
                    ),
                  ),
                );
              }),
          // MetaLogo()
        ],
      ),
    );
  }
}
