import 'package:flutter/material.dart';

import 'laguageradio.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key, required String title}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List chats = [
    {
      "title": "Theme",
      "subtitle": "Light",
      "image": Icon(Icons.brightness_4),
    },
    {
      "title": "Wallpaper ",
      "subtitle": "Select ",
      "image": Icon(Icons.wallpaper),
    },
  ];
  List Archive = [
    {
      "title": "App Language",
      "subtitle": "Phone's Language",
      "image": Icon(Icons.language),
    },
    {
      "title": "Chat Backup ",
      "subtitle": " ",
      "image": Icon(Icons.backup),
    },
    {
      "title": "Chat History ",
      "subtitle": " ",
      "image": Icon(Icons.history),
    },
  ];
  @override
  bool _flutter = false;
  bool _flutter2 = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Chats"),
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: Text(
                "Display",
                style: TextStyle(color: Colors.black38, fontSize: 18.0),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: chats.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(chats[index]["title"]),
                subtitle: Text(chats[index]["subtitle"]),
                leading: (chats[index]["image"]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text(
                "Chats Setting",
                style: TextStyle(color: Colors.black38, fontSize: 18.0),
              ),
            ),
            SwitchListTile(
              title: Text(
                'Enter is Send',
              ),
              subtitle: Text('Enter key will send your message'),
              value: _flutter,
              activeColor: Colors.green,
              inactiveTrackColor: Colors.grey,
              onChanged: (bool value) {
                setState(() {
                  _flutter = value;
                });
              },
            ),
            SwitchListTile(
              title: Text(
                'Media Visibility',
              ),
              subtitle: Text('Show newly downloaded media in your gallery'),
              value: _flutter2,
              activeColor: Colors.green,
              inactiveTrackColor: Colors.grey,
              onChanged: (bool value) {
                setState(() {
                  _flutter2 = value;
                });
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: Archive.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(Archive[index]["title"]),
                subtitle: Text(Archive[index]["subtitle"]),
                leading: (Archive[index]["image"]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LanguageSelectorPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
