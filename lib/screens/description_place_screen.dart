import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionPlaceScreen extends StatelessWidget {
  const DescriptionPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle = TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    );

    //contsante que guarda un texto lorem
    const descriptionText =
        'Nisi id occaecat eu occaecat elit ad reprehenderit est aliquip ipsum ad ex. Duis elit officia enim eiusmod occaecat. Deserunt nulla elit cupidatat laborum commodo id fugiat sint. Dolore tempor dolore veniam ut qui. Irure est ad adipisicing veniam cillum labore ut reprehenderit tempor qui occaecat.\n\n Id enim nisi Lorem ea magna minim est irure elit duis voluptate anim. Incididunt qui sunt sunt incididunt. Non occaecat nostrud magna pariatur dolor eu velit mollit dolore velit ipsum duis nulla. Do laboris ut aute eiusmod nisi mollit voluptate amet esse amet.';
   
    final estrella = Container(
        margin: const EdgeInsets.only(top: 300.0, right: 3.0),
        child: const Icon(
          Icons.star,
          color: Color.fromARGB(255, 255, 247, 6)
        ));
   
    final description = Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Text(descriptionText,
            style: GoogleFonts.aboreto(
                textStyle: const TextStyle(
              fontSize: 16.0,
            ))));
   
    final titleAndStars = Row(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
            child: const Text(
              "VIAJES",
              style: titleStyle,
              textAlign: TextAlign.center,
            )),
        estrella,
        estrella,
        estrella,
        estrella,
        estrella,
      ],
    );
    return Column(
      children: [
        titleAndStars, 
        description,
      ],
    );
  }
}
