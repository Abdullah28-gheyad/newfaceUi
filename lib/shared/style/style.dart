import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor:Colors.white,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white ,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor:Colors.white,
        elevation: 0.0 ,
        titleTextStyle: TextStyle(color: Colors.white ,
            fontSize: 20.0 , fontWeight: FontWeight.bold)
    ),
);
