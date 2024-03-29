import 'package:flutter/material.dart';
import 'package:multiplicador_basico/home_screen.dart';
import 'package:multiplicador_basico/screens/profile.dart';


class Travels extends StatefulWidget {
  const Travels({super.key});

  @override
  State<Travels> createState() => _TravelsState();
}

class _TravelsState extends State<Travels> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = const [
    HomeScreen(),
    Perfil(),
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purpleAccent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home
                ),
                label: ''
              ),
              BottomNavigationBarItem(
              icon: Icon(
                Icons.person
                ),
                label: ''
              ),
               BottomNavigationBarItem(
              icon: Icon(
                Icons.search
                ),
                label: ''
              ),
              
          ],
        ),
      ),
    );
  }
}