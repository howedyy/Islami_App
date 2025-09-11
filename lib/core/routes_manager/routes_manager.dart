import 'package:flutter/cupertino.dart';
import 'package:islami_app/feature/main_layout/main_layout.dart';
import 'package:islami_app/feature/splash/splash_screen.dart';
import 'package:islami_app/feature/sura_details/sura_details.dart';

class RoutesManager {
  static const String splash = "/splash";
  static const String onBoarding = "/onBoarding";
  static const String mainLayout = "/mainLayout";
  static const String suraDetails = "/suraDetails";



  static Map<String, WidgetBuilder> routes = {
    splash:(context)=> SplashScreen(),
    mainLayout:(context)=> MainLayout(),
    suraDetails :(context)=>SuraDetails()
  };
}