import 'package:flutter/material.dart';
import 'package:proyecto_1/pages/login_page.dart';
// import 'package:proyecto_1/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MaterialApp',
      home: LoginPage(),
    );
  }
}
