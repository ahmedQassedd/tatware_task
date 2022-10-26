import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tatware_test/core/util/const.dart';

ThemeData lightingTheme() => ThemeData(

  primarySwatch: Colors.teal,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(color: Colors.black),
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),

    elevation: 0.0,

    titleTextStyle: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(

      selectedItemColor: primaryColor ,
      unselectedItemColor: Colors.black54 ,


  )
);