import 'package:flutter/material.dart';
import './liste_fruits.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomme, poire & ananas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const listeFruits(title: 'Pomme, poire & ananas'),
    );
  }
}