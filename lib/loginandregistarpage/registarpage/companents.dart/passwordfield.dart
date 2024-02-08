import 'package:flutter/material.dart';

class passwordfield extends StatelessWidget {
  const passwordfield({
    super.key,
    required this.controllerpassword,
  });

  final TextEditingController controllerpassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: controllerpassword,
        onChanged: (value) {},
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.password_outlined),
          filled: true,
          fillColor: Color.fromARGB(181, 255, 254, 254),
          hintText: 'Şifrenizi giriniz.',
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
      ),
    );
  }
}

