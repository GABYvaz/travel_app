import 'package:flutter/material.dart';
import 'package:multiplicador_basico/screens/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 320.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage(pathImage: 'img/place1.jpg'),
          CardImage(pathImage: 'img/place2.jpg'),
          CardImage(pathImage: 'img/place3.jpg'),
          CardImage(pathImage: 'img/place4.jpg'),
        ],
      ),
    );
  }
}