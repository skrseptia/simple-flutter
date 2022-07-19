// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:uasflutter_ikhsanguntara_20218230004/auth_screen.dart';
import 'package:uasflutter_ikhsanguntara_20218230004/tabs_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthScreen(),
    );
  }
}
