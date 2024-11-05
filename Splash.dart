import 'dart:async';

import 'package:flutter/material.dart';

import 'FirstPage.dart';



class BakerySplash extends StatefulWidget{
  @override
  State<BakerySplash> createState() => _BakerySplashState();
}

class _BakerySplashState extends State<BakerySplash> {
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => BakeryFirstPage()),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/img/bakerySplash.jpg", fit: BoxFit.cover,),),
    );

  }
}