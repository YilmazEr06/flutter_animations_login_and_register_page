import 'package:flutter/material.dart';
import 'package:flutter_animations/loginandregistarpage/loginpage/companents/loginpagebody.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key, required this.title});
  final String title;
  @override
  State<Loginpage> createState() => _loginPageState();
}

class _loginPageState extends State<Loginpage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation sizeanimationpositive;

  late Animation sizeanimationneq;

  late Animation locanimationpos;

  late Animation locanimationneg;

  late double color1;
  List<Color> colors1 = const [
    Color.fromARGB(255, 154, 64, 228),
    Color.fromARGB(255, 173, 115, 6)
  ];
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 15));
    sizeanimationpositive = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) _controller.forward();
      });
    _controller.reverse();

    sizeanimationneq = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.forward();
        } else if (status == AnimationStatus.dismissed) _controller.reverse();
      });
    _controller.forward();

    locanimationpos = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) _controller.forward();
      });
    _controller.forward();

    locanimationneg = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) _controller.forward();
      });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Loginbody(
        sizeanimationneq: sizeanimationneq,
        locanimationpos: locanimationpos,
        colors1: colors1,
        sizeanimationpositive: sizeanimationpositive);
  }
}


