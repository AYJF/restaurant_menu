import 'package:flutter/material.dart';
import 'package:restaurant_menu/views/cold/cold.dart';
import 'package:restaurant_menu/views/entrees/entrees.dart';
import 'package:restaurant_menu/views/home/home.dart';
import 'package:restaurant_menu/views/soups/soups.dart';
import 'package:restaurant_menu/views/tacos/tacos.dart';
import 'package:restaurant_menu/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (_) => const LoadingScreen(),
        '/dashboard': (_) => const Home(),
        '/entrees': (_) => const Entrees(),
        '/cold': (_) => const Cold(),
        '/soup': (_) => const Soups(),
        '/tacos': (_) => const Tacos(),
      },
    );
  }
}
