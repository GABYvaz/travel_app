import 'package:flutter/material.dart';

class Opiniones extends StatelessWidget {
  final String lugar;
  final String visitado;
  final String fecha;
  const Opiniones(
      {super.key,
      required this.lugar,
      required this.visitado,
      required this.fecha});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 100,
        //child: Container(
          child: Column(
            children:  [
              Container(
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  lugar,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                alignment: Alignment.centerLeft,
                child: Text(visitado),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(fecha),
                      const Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 208, 35, 247),
                      )
                    ],
                  ))
            ],
          ),
        //),
      ),
    );
  }
}
