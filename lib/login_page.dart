// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus){
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email:",
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  maxLength: 8,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Senha:",
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if(email == "lucas@test" && password == "123"){
                      print("Entrando");
                    }
                  },
                  child: Text('Entrar'),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}