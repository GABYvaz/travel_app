import 'package:flutter/material.dart';
import 'package:multiplicador_basico/screens/encabezado.dart';
import 'package:multiplicador_basico/screens/lugares_visitados.dart';
import 'package:multiplicador_basico/screens/opiniones.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:const [
            parte_azul(),
            Expanded(
              child: LugaresVisitados(
            ubicacion: 'assets/img/place2.jpg',
          )),
            Opiniones(
            lugar: 'Lago',
            visitado: 'Visitaste este lugar hace 2 mese',
            fecha: '25-02-23',
          ),
            Expanded(
              child: LugaresVisitados(
            ubicacion: 'assets/img/place3.jpg',
          )),
            Opiniones(
            lugar: 'Montañas',
            visitado: 'Visitaste este lugar hace 1 semana',
            fecha: '7-03-23',
          ),
            Expanded(
              child: LugaresVisitados(
            ubicacion: 'assets/img/place1.jpg',
          )),
            Opiniones(
              lugar: 'Lago colorado',
              visitado: 'Visitaste este lugar hace 1 año',
              fecha: '20-03-22')
        ],
      ),
    );
  }
}
