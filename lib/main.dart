import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/Login_Page.dart';


void main() {
  runApp(SecondApp());
}

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home :LoginPage(),
    );
    
  }
}