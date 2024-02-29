import 'package:flutter/material.dart';
import 'package:forum_jasa/notifications.dart';
import 'package:forum_jasa/profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: Notifications(),
    );
  }
}
