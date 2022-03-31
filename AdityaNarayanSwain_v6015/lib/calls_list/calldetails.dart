import 'package:flutter/material.dart';

import '../chats_list/chatsscreen1.dart';
import '../constants/ColorConstants.dart';

class Calldetails extends StatefulWidget {
  const Calldetails({Key? key}) : super(key: key);

  @override
  State<Calldetails> createState() => _CalldetailsState();
}

class _CalldetailsState extends State<Calldetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal_dark_green,
        title: Text("Call info"),
        leading: Icon(Icons.arrow_back),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.chat_sharp,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
      ),

    );
  }
}
