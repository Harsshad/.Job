import 'package:dot_job/screens/home_page.dart';
import 'package:dot_job/screens/login_screen.dart';
import 'package:dot_job/screens/register_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return {
    '/login': (context) => LoginScreen(onTap: () {}),
    '/regiter': (context) => RegisterScreen(onTap: () {}),
    '/home-page': (context) => HomePage(),
  };
}
