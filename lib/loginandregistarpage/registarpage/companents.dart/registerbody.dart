import 'package:flutter/material.dart';
import 'package:flutter_animations/loginandregistarpage/loginpage/companents/Loginform.dart';
import 'package:flutter_animations/loginandregistarpage/registarpage/companents.dart/registerform.dart';
import 'package:flutter_animations/loginandregistarpage/sharedwigets/circle.dart';
import 'package:flutter_animations/loginandregistarpage/sharedwigets/triangle.dart';

class Registerbody extends StatelessWidget {
  const Registerbody({
    super.key,
    required this.sizeanimationneq,
    required this.locanimationpos,
    required this.colors1,
    required this.sizeanimationpositive,
  });

  final Animation sizeanimationneq;
  final Animation locanimationpos;
  final List<Color> colors1;
  final Animation sizeanimationpositive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
            Color.fromARGB(255, 240, 238, 145),
            Color.fromARGB(255, 190, 140, 46)
          ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            fit: StackFit.expand,
            children: [
              createcircle(
                radiosanimation: sizeanimationneq,
                left: locanimationpos.value * 20 + 250,
                maxsize: 100,
                minsize: 50,
                top: locanimationpos.value * 20 + 500,
                colors: colors1,
              ),
              createcircle(
                radiosanimation: sizeanimationpositive,
                left: 150,
                maxsize: 100,
                minsize: 60,
                top: 200,
                colors: colors1,
              ),
              createcircle(
                radiosanimation: sizeanimationneq,
                left: 150,
                maxsize: 100,
                minsize: 80,
                top: 650,
                colors: colors1,
              ),
              createriangle(
                radiosanimation: sizeanimationneq,
                left: 250,
                maxsize: 100,
                minsize: 80,
                top: 80,
                colors: colors1,
              ),
              createriangle(
                radiosanimation: sizeanimationneq,
                left: 50,
                maxsize: 100,
                minsize: 80,
                top: 400,
                colors: colors1,
              ),
              Registerform()
            ],
          )),
    );
  }
}
