import 'package:flutter/material.dart';

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
          padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
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
                    child: Hero(
                      tag: "login",
                      child: ElevatedButton(
                        
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/registerpage', (route) => false);
                        
                      }, child: const Text("Hesabınız yokmu?",style: TextStyle(fontSize: 18),)),
                    ),
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