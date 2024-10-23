import 'package:classmates_web/pages/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClassmatesWeb());
}
class ClassmatesWeb extends StatelessWidget {
  const ClassmatesWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      home: const SplashPage(),
    );
  }
}
