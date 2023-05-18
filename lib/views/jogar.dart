// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'dart:math';

import 'package:caracoroa/Views/resultado.dart';
import 'package:flutter/material.dart';


class CaraOuCoroa extends StatefulWidget {
  const CaraOuCoroa({super.key});

  @override
  State<CaraOuCoroa> createState() => _CaraOuCoroaState();
}

class _CaraOuCoroaState extends State<CaraOuCoroa> {
  void _abriResultado(){
    var itens = ['cara','coroa'];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Resultado(resultado)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 96, 189, 140),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/logo.png"),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () => {
                  _abriResultado()
                },
                child: Image.asset("images/botao_jogar.png"),
              )
            ]
          ),
          
        ),
      );
  }
}
