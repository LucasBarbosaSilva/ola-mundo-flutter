import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Contator $counter"),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 50, width: 50, color: Colors.red,),
                Container(height: 50, width: 50, color: Colors.red,),
                Container(height: 50, width: 50, color: Colors.red,),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          setState(() {
            counter++;
          });
         },
        child: const Icon(Icons.add), 
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Switch(
            value: AppController.instance.isDarkTheme, 
            onChanged: (value){
                AppController.instance.changeTheme();
            }
          );
  }
}