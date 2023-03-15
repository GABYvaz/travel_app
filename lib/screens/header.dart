import 'package:flutter/material.dart';
import 'package:multiplicador_basico/screens/card_image_list.dart';
import 'package:multiplicador_basico/screens/card_image.dart';
import 'package:multiplicador_basico/screens/gradient_back.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        GradientBack(title: 'TRAVEL'),
        CardImageList(),
      ],
    );
  }
}