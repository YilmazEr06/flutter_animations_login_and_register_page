import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Phonewidget extends StatelessWidget {
  const Phonewidget({
    super.key,
    required this.focusNode,
  });

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: IntlPhoneField(
        initialCountryCode: "+90",
        focusNode: focusNode,
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
        languageCode: "tr",
        onChanged: (phone) {
          print(phone.completeNumber);
        },
        onCountryChanged: (country) {
          print('Country changed to: ' + country.name);
        },
      ),
    );
  }
}
