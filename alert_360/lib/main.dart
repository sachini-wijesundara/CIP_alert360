import 'package:flutter/material.dart';
import 'screens/splash screen.dart'; // Import the splash screen file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert 360',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(), // Set the splash screen as the home widget
    );
  }
}
