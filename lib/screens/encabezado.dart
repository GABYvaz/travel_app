import 'package:flutter/material.dart';


class parte_azul extends StatelessWidget {
  const parte_azul({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 153, 17, 158),
      height: 250.0,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(28, 25, 0, 0),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Profile',
              style: TextStyle(color: Colors.white, fontSize: 27),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: const CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: NetworkImage(
                        'data:image/jpeg;base64,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'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: const Text(
                    'Gabriela Anahi',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
      
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.email),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
