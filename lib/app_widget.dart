import 'package:flutter/material.dart';
import 'package:ola_mundo/Home_Page.dart';
import 'package:ola_mundo/app_controller.dart';
import 'package:ola_mundo/login_page.dart';

class AppWidget extends StatelessWidget{
  final String? title;

  const AppWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: AppController.instance.isDarkTheme 
            ? Brightness.dark 
            : Brightness.light,
        ),
        initialRoute: "/",
        routes: {
          '/':(context) => const LoginPage(),
          '/home':(context) => HomePage()
        },
      );
    });
  }
}