import 'dart:html';
import 'server.dart';
import 'loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Map info = ModalRoute.of(context)!.settings.arguments as Map;
    String id = info["id"];
    String userId = info["userId"];
    String name = info["name"];
    String mobnum = info["mobnum"];
    String email = info["email"];
    String ggn = info["ggn"];
    String famName = info["famName"];
    String farmMap = info["farmMap"];
    String consName = info["consName"];
    String profileId = info["profileId"];
    String profileUrl = info["profileUrl"];
    List plots = info["plots"];
    //print(info['pre']);
    //  String x = ((info['hum']).toString().substring(0, 4));
    //String icon = info['icon_value'];

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text("Id: $id"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text("UserId: $userId"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text("FarmName: $famName"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text("Name: $name"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text("Mobile Number: $mobnum"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text("Email: $email"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text("GGN: $ggn"),
            color: Color(0xfff9bc04),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text("FarmMap: $farmMap"),
            color: Color(0xfff9bc04),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text("farmName: $famName"),
            color: Color(0xfff9bc04),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text(""),
            color: Color(0xfff9bc04),
          ),
        ],
      ),
    );
  }
}
