import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiplicador_basico/screens/review.dart';

class DescriptionPlaceScreen extends StatelessWidget {
      final String descriptionPlace;
      final String namePlace;
      final int stars;
      

  const DescriptionPlaceScreen({super.key, 
  required this.descriptionPlace, 
  required this.namePlace, 
  required this.stars, 
 });


  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle = TextStyle(
      
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    );

    final stars = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Colors.purpleAccent,
      ),
    );
    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child:  Text(
        descriptionPlace,
        style: GoogleFonts.almendra(
          textStyle: const TextStyle(
            fontSize: 16.0,
          )
        ),
      ),
    );

    final titleAndStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child:  const Text(
            "Duwil Ella",
            style: titleStyle,
            textAlign: TextAlign.left,
          )
          ),
          stars,
          stars,
          stars,
          stars,
      ],
    );
    return Column(
      children: [
        titleAndStars,
        description,
        const Review(),
      ],
    );
  }
}