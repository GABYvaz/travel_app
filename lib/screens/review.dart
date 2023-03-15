import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String user;
  final String details;
  final String comments;

  const Review(
      {super.key,
      required this.pathImage,
      required this.user,
      required this.details,
      required this.comments});


@override
Widget build(BuildContext context){
  //estrella con relleno
  final star = Container(
    margin: const EdgeInsets.only(
      right: 3.0,
    ),
    child: const Icon(
      Icons.star_border,
    color: Colors.yellowAccent,
  ),
  );
  
 //imagen de usuario
    final profilePic = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    //nombre del usuario

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        user,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
          fontSize: 17.0,
          fontWeight: FontWeight.bold
          ),
      ),
    );

    //informacion del usuario

    final userInfo= Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ) ,
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(fontSize: 14.00, color: Colors.black54),
      ),
    );

    //comentarios del usuario

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comments,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(fontSize: 14.0, color: Colors.black54),
      ),
    );

    //mostrar userName, userInfo y userComments

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(
          children: [userInfo, star, star, star],
            ),
          userComment,
           ],
        );
    
    return Row(
      children: [
        profilePic,
        userDetails,
      ],
      );
}
}