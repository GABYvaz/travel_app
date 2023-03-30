import 'package:flutter/material.dart';
import 'package:multiplicador_basico/screens/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    final encabezado = Container(
      margin: const EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: const Text(
        'Comentarios',
        style: TextStyle(color: Color.fromARGB(255, 15, 15, 15), fontSize: 30),
    ));
    return  Column(
      children: [
        encabezado,
        const Review(
            pathImage: 'assets/img/profile1.jpg',
            user: 'Apolonia Rodrigez',
            details: '1 revew 5 photos',
            comments: 'This is an amizing place in Sri Lanka'),
        const Review(
            pathImage: 'assets/img/profile2.jpg',
            user: 'Andres Lopez Balboa',
            details: '2 review 2 photos',
            comments: 'Great place'),
        const Review(
            pathImage: 'assets/img/profile3.jpg',
            user: 'Luis Fernandez',
            details: '3 review 3 photos',
            comments: 'Great place'),
        const Review(
            pathImage: 'assets/img/profile4.jpg',
            user: 'Trino Javier Lopez Chabelo',
            details: '4 revew 4 photos',
            comments: 'Great Place'),
      ],
    );
  }
}