import 'package:flutter/material.dart';
import 'package:login_register_screen/screen/account_type_screen.dart';

import 'screen/login_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LoginScreen(),
    );
  }
}
