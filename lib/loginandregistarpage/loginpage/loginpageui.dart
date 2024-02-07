import 'package:flutter/material.dart';
import 'package:flutter_animations/loginandregistarpage/sharedwigets/circle.dart';
import 'package:flutter_animations/loginandregistarpage/sharedwigets/triangle.dart';

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

class Loginbody extends StatelessWidget {
  const Loginbody({
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
            Color.fromARGB(255, 228, 225, 64),
            Color.fromARGB(255, 173, 115, 6)
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
              Loginform()
            ],
          )),
    );
  }
}

class Loginform extends StatelessWidget {
  const Loginform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: TextField(
            
            onChanged: (value) {
            },
            decoration: const InputDecoration(
              prefixIcon:Icon(Icons.people_alt_outlined),
              filled: true,
              fillColor: Color.fromARGB(181, 255, 254, 254),
              hintText: 'Kullanıcı adınızı giriniz',
              contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.lightBlueAccent, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.lightBlueAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            onChanged: (value) {
            },
            decoration: const InputDecoration(
              prefixIcon:Icon(Icons.password_outlined),
              filled: true,
              fillColor: Color.fromARGB(181, 255, 254, 254),
              hintText: 'Şifrenizi giriniz.',
              contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.lightBlueAccent, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.lightBlueAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 150),
          child: Column(
            children: [

              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  
                  onPressed: () {
                  
                }, child: const Text("Giriş",style: TextStyle(fontSize: 25))),
              ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      
                      onPressed: () {
                      
                    }, child: Text("Hesabınız yokmu?",style: TextStyle(fontSize: 18),)),
                  ),
                ),
            ],
          ),
        ),
       
        SizedBox.fromSize(size: Size(0, MediaQuery.of(context).size.height/15),)
     
      ],
    );
  }
}
