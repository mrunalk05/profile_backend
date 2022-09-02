import 'package:flutter/material.dart';
import 'server.dart';
import 'home.dart';
import 'loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
      },
    ));
