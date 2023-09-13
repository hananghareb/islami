import 'package:flutter/material.dart';
class Mythemedata{
  static const String routeName="theme";
  static const Color PrimaryColor=Color(0xFFB7935F);
  static const Color blackcolor=Color(0xFF242424);

  static ThemeData LightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
      
      appBarTheme:AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,

      ),
    
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: PrimaryColor,
      selectedItemColor: blackcolor,
      unselectedItemColor: Colors.white,

      
    )
  );
  static ThemeData DarkTheme=ThemeData();


}