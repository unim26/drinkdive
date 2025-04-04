import 'package:flutter/material.dart';
import 'package:web_animation1/pages/home_page.dart';
import 'package:web_animation1/pages/splash_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash-page',
      routes: {
        '/': (context) => HomePage(),
        '/splash-page': (context) => SplashPage(),
      },
    );
  }
}
