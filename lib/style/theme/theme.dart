import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../colors/colors.dart';

ThemeData darkTheme = ThemeData(
  // fontFamily: 'assets/fonts/dexef_normal',
  fontFamily: 'DEXEF',
  // primarySwatch: primaryColorMC,
  // highlightColor: Color(0xffffc600),
  // scrollbarTheme: ScrollbarThemeData().copyWith(
  //   thumbColor: MaterialStateProperty.all(Colors.green[500]),
  // ),
  iconTheme: const IconThemeData(color: Colors.white),

  // scaffoldBackgroundColor: scaffoldBack,
  // drawerTheme: DrawerThemeData(backgroundColor: scaffoldBack),
  appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark
    ),
    // backgroundColor: scaffoldBack,
    elevation: 0.0,
    titleTextStyle:  TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      // fontFamily: 'assets/fonts/dexef_normal',
      fontFamily: 'DEXEF',
    ),
    iconTheme:  IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
    // backgroundColor: scaffoldBack,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      // fontSize: 15,
      color: Colors.white,
      // fontFamily: 'assets/fonts/dexef_normal',
      // fontFamily: 'DEXEF',
    ),
    bodyLarge: TextStyle(
      // fontSize: 18,
      color: Colors.white,
      // fontFamily: 'assets/fonts/dexef_normal',
      // fontFamily: 'DEXEF',
    ),
    bodyMedium: TextStyle(
      // fontSize: 18,
      color: Colors.white,
      // fontFamily: 'assets/fonts/dexef_normal',
      // fontFamily: 'DEXEF',
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  fontFamily: 'DEXEF',
  primarySwatch: primaryColorMC,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle:  SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme:  IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
    backgroundColor: Colors.transparent,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 17,
      // fontWeight: FontWeight600,
      color: Colors.black,
      // fontFamily: 'assets/fonts/dexef_normal',
      fontFamily: 'DEXEF',
    ),
    bodyMedium:  TextStyle(
      fontSize: 15,
      //fontWeight: FontWeight600,
      color: Colors.black,
      // fontFamily: 'assets/fonts/dexef_normal',
      fontFamily: 'DEXEF',
    ),
  ),
);
