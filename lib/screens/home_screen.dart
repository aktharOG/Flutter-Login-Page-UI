import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             const Text("Welcome To ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              
              Image.asset("assets/eayezy.png"),
           
      ],),
    ),);
  }
}