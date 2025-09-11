import 'package:flutter/material.dart';

import '../../core/resources/colors_manager.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor:ColorsManager.black,
      foregroundColor: ColorsManager.gold,
      titleTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ColorsManager.gold),
      centerTitle: true,
    ) ,

      primaryColor: Colors.blue,
      scaffoldBackgroundColor: ColorsManager.black,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorsManager.gold,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorsManager.white,
        unselectedItemColor: ColorsManager.black,
      )
  );
  static final ThemeData dark = ThemeData(
      primaryColor: Colors.red,
      scaffoldBackgroundColor: ColorsManager.black,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorsManager.gold,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorsManager.white,
        unselectedItemColor: ColorsManager.black,
      )
  );

}