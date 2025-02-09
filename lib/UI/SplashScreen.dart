import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopifyclone/SubScreens/LoginScreen.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
                width: 150,
                child: Image.asset("assets/images/IthariMedical.png",fit: BoxFit.fill,)),
          ),
        ],
      ),
    );
  }
}
