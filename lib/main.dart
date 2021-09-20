import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talking_lands/global/globals.dart';

import 'views/homepage_view.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map - Store - Manage lands | TakingLands',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: darkColor),
        primaryColor: orangeColor,
        accentColor: orangeColor,
      ),
      home: Homepage(title: 'Taking Lands'),
    );
  }
}
