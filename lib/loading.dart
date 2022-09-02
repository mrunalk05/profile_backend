//import 'dart:ffi';

import 'dart:math';

import 'package:flutter/material.dart';
import 'server.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  worker instance = worker();
  void StartApp() async {
    worker instance = worker();
    await instance.getData();
    id = instance.id;
    userId = instance.userId;
    name = instance.name;
    email = instance.email;
    mobnum = instance.mobnum;
    email = instance.email;
    ggn = instance.ggn;
    famName = instance.famName;
    farmpMap = instance.farmpMap;
    consName = instance.consName;
    profileId = instance.profileId;
    profileUrl = instance.profileUrl;
    plots = instance.plots;

    Navigator.pushNamed(context, '/home', arguments: {
      "id": id,
      "userId": userId,
      "name": name,
      "mobnum": mobnum,
      "email": email,
      "farmMap": farmpMap,
      "farmName": famName,
      "ggn": ggn,
      "consName": consName,
      "plots": plots,
      "profileId": profileId,
      "profileUrl": profileUrl
    });
  }

  String? id;
  String? userId;
  String? name;
  String? mobnum;
  String? email;
  String? ggn;
  String? famName;
  String? farmpMap;
  String? consName;
  String? profileId;
  String? profileUrl;
  List? plots;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StartApp();

    // futurealbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Color(0xff012c4f),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // mainAxisAlignment: MainAxisAlignment.center,
            Text("Fresh Express"),
            Text("Todays Weather"),
            Image.network(
                'https://media-exp2.licdn.com/dms/image/C510BAQEas6Br-ACNLg/company-logo_200_200/0/1519904654756?e=2147483647&v=beta&t=NxP3_oIkewoecBmZqmCUn1wjEeiwCWHnbx2dkGoDUxM')
          ],
        ));
  }
}
