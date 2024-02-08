import 'package:flutter/material.dart';

class birhdaypickertextfield extends StatefulWidget {
  const birhdaypickertextfield({
    super.key,
    required this.controllerbirthday,
    required this.nameicon, 

     
  });
  final TextEditingController controllerbirthday;
  final Icon nameicon;


  @override
  State<birhdaypickertextfield> createState() => _birhdaypickertextfieldState();
}

class _birhdaypickertextfieldState extends State<birhdaypickertextfield> {
Future<void> setbirthday(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
    
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null ) {
      setState(() {
         widget.controllerbirthday.text= picked.toString().split(" ")[0];
     
      });
    }}

  @override
  Widget build(BuildContext context) {
    return Padding(
 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        readOnly: true,
        controller: widget.controllerbirthday,
        onTap: () =>setbirthday(context),
        onChanged: (value) {},
        decoration: InputDecoration(
          prefixIcon: widget.nameicon,
          filled: true,
          fillColor: const Color.fromARGB(181, 255, 254, 254),
          hintText: 'Doğum günü',
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.lightBlueAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.lightBlueAccent, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
      ),
    );
  }
}

