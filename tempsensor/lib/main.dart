import 'package:flutter/material.dart';
import 'package:tempsensor/constants/constant.dart';
import 'package:tempsensor/screens/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Temperature Sensor",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.dark,
      ),
      // Make MainScreen scrollable-friendly
      home: const SafeArea(child: MainScreen()),
    );
  }
}
