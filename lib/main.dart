
import 'package:flutter/material.dart';
import 'package:flutter_animations/loginandregistarpage/loginpage/loginpageui.dart';
import 'package:flutter_animations/loginandregistarpage/registarpage/registarpageui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes: {
      '/registerpage':(context)=>Registerpage(),
      
    },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Loginpage(title: 'Flutter Demo Home Page'),
    );
  }
}
