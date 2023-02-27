import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_login/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

      naviagateAfterSplash(){
         Timer(const Duration(seconds: 3),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) =>const LoginPage()  
            )  
         )  
    );  
      }

    @override
  void initState() {
    super.initState();
   naviagateAfterSplash();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 100,
                  child: Image.asset("assets/eayezy.png"))
            ],
          ),
        ),
      ),
    );
  }
}
