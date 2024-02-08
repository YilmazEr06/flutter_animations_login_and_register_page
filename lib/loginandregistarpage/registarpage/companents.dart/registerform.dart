import 'package:flutter/material.dart';
import 'package:flutter_animations/loginandregistarpage/registarpage/companents.dart/datepicker.dart';
import 'package:flutter_animations/loginandregistarpage/registarpage/companents.dart/passwordfield.dart';
import 'package:flutter_animations/loginandregistarpage/registarpage/companents.dart/phonewidget.dart';
import 'package:flutter_animations/loginandregistarpage/registarpage/companents.dart/textfield.dart';


// ignore: must_be_immutable
class Registerform extends StatefulWidget {
  Registerform({super.key});

  @override
  State<Registerform> createState() => _RegisterformState();
}

class _RegisterformState extends State<Registerform> {
  late TextEditingController controllername;

  late TextEditingController controllerlastname;

  late TextEditingController controllermail;

  late TextEditingController phonenumber;

  late TextEditingController controllerbirthday;

  late TextEditingController controllerpassword;

  late TextEditingController controllerpassword1;

  late Icon nameicon;

  late Icon lastnameicon;

  late Icon emailicon;

  late Icon phonenumbericon;

  late Icon birthdayicon;

  late Icon password1icon;

  late Icon password2icon;


    @override
  void initState() {
    // TODO: implement initState
    super.initState();
     controllername = TextEditingController();
    controllerlastname = TextEditingController();
    controllermail = TextEditingController();
    phonenumber = TextEditingController();
    controllerbirthday = TextEditingController();
    controllerpassword = TextEditingController();
    controllerpassword1 = TextEditingController();
    nameicon = const Icon(Icons.people_alt_outlined);
    lastnameicon = const Icon(Icons.people_alt_outlined);
    emailicon = const Icon(Icons.people_alt_outlined);
    phonenumbericon = const Icon(Icons.people_alt_outlined);
    birthdayicon = const Icon(Icons.cake);
    password1icon = const Icon(Icons.people_alt_outlined);
    password2icon = const Icon(Icons.people_alt_outlined);

    nameicon = const Icon(Icons.people_alt_outlined);

  }
  @override
  Widget build(BuildContext context) {
   
    FocusNode focusNode = FocusNode();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox.fromSize(
            size: Size(0, MediaQuery.of(context).size.height / 10),
          ),
          Textfield(controllername: controllername, nameicon: nameicon),
          Textfield(controllername: controllerlastname, nameicon: lastnameicon),
          Textfield(controllername: controllermail, nameicon: emailicon),
          birhdaypickertextfield(controllerbirthday: controllerbirthday, nameicon: birthdayicon),
          Phonewidget(focusNode: focusNode),
          passwordfield(controllerpassword: controllerpassword),
          passwordfield(controllerpassword: controllerpassword1),
          ElevatedButton(onPressed: () {
          }, child: Text("Kaydol")),
          ElevatedButton(onPressed: () {
          }, child: Text("Hesabın varmı?")),
          SizedBox.fromSize(
            size: Size(0, MediaQuery.of(context).size.height / 3),
          )
        ],
      ),
    );
  }
}


