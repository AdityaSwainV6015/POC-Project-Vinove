import 'package:flutter/material.dart';
import '../constants/data.dart';
import 'calldetails.dart';

class CallsListPage extends StatefulWidget {
  const CallsListPage({Key? key}) : super(key: key);

  @override
  State<CallsListPage> createState() => _CallsListPageState();
}

class _CallsListPageState extends State<CallsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_call),
          backgroundColor: Colors.teal,
          onPressed: () {}),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: call.length,
        itemBuilder: (context, index) => ListTile(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Calldetails(
                )));
          },
          title: Text(call[index]["title"]),
          subtitle: Text(call[index]["subtitle"]),
          leading: CircleAvatar(
            backgroundImage: AssetImage(call[index]["image"]),
          ),
          trailing: Icon(
            call[index]["trailing"],
            color: Colors.teal,
          ),
        ),
      ),
    );
  }
}
