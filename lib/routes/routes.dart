import 'package:flutter/material.dart';
import 'package:rooster_letcode/views/home.dart';
import 'package:rooster_letcode/views/login.dart';
import 'package:rooster_letcode/views/playwright.dart';
import 'package:rooster_letcode/views/videos.dart';

class AppRoutes {
  AppRoutes._();

  static const String authLogin = '/login';
  static const String home = '/home';
  static const String playwright = '/playwright';
  static const String videos = '/videos';

  static Map<String, WidgetBuilder> define() {
    return {
      // authLogin: (context) => Login(),
      playwright: (context) => const Playwright(),
      videos: (context) => const Videos(),
    };
  }
}
