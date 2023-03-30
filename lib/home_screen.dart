import 'package:flutter/material.dart';
import 'package:multiplicador_basico/screens/description_place_screen.dart';
import 'package:multiplicador_basico/screens/header.dart';
import 'package:multiplicador_basico/screens/review_list.dart';
import 'package:multiplicador_basico/screens/profile.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: DescriptionPlaceScreen(),
        body: Stack(
          children: [
            ListView(
              children: const [
                  DescriptionPlaceScreen(),
                  ReviewList()
              ],
            ),
            const Header()
          ],
        ),
      ),
      initialRoute: 'inicio',
      routes: {
        'profile': (context) => const Perfil(),
      },
    );
  }
}

