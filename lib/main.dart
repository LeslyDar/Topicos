import 'package:flutter/material.dart';
import 'package:app_negocio/vistas/home_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
