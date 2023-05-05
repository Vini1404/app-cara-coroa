// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class CaraouCoroa extends StatefulWidget {
  const CaraouCoroa({super.key});

  @override
  State<CaraouCoroa> createState() => _CaraouCoroaState();
}

class _CaraouCoroaState extends State<CaraouCoroa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 97, 189, 140),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            SizedBox(height: 50),
            GestureDetector(
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
