import 'package:flutter/material.dart';
import 'package:multiplicador_basico/travels.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B&B Travels',
      home: Travels(),
    );
  }
}
