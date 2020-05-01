import 'package:flutter/material.dart';
import 'package:legacy_plastics/pages/ideas.dart';
import 'package:legacy_plastics/pages/loading.dart';
import 'package:legacy_plastics/pages/home.dart';
import 'package:legacy_plastics/pages/auth_activity.dart';
import 'package:legacy_plastics/pages/login.dart';

void main() => runApp(myApp());

Widget myApp() {
  return MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Load(),
      '/home': (context) => Home(),
      '/auth': (context) => Auth(),
      '/ideas': (context) => Ideas(),
      '/login': (context) => Login(),
    },
  );
}
