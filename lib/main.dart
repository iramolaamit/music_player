
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/screen/home.dart';
import 'package:music_player/theme/app_theme.dart';


import 'music_detail_page.dart';

void main() {

  runApp(
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),

      home: HomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

