import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  int activeDiceFace = 0;
  List<String> image = [
    "https://i0.wp.com/www.printmag.com/wp-content/uploads/2021/02/4cbe8d_f1ed2800a49649848102c68fc5a66e53mv2.gif?fit=476%2C280&ssl=1",
    "https://upload.wikimedia.org/wikipedia/commons/2/2c/Alea_1.png",
    "https://upload.wikimedia.org/wikipedia/commons/b/b8/Alea_2.png",
    "https://upload.wikimedia.org/wikipedia/commons/2/2f/Alea_3.png",
    "https://upload.wikimedia.org/wikipedia/commons/8/8d/Alea_4.png",
    "https://upload.wikimedia.org/wikipedia/commons/5/55/Alea_5.png",
    "https://upload.wikimedia.org/wikipedia/commons/f/f4/Alea_6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              transform: GradientRotation(.5),
              colors: [Colors.blue, Colors.lightGreen]),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Roll Dice",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Image.network(
              image[activeDiceFace],
              width: 200,
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                int randomNum = Random().nextInt(6)+1;
                setState(() {
                  activeDiceFace = randomNum;       
                });
              },
              child: const Text(
                "Roll",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  activeDiceFace = 0;
                });
            }, child: const Text(
              "Show Nyan Cat",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
