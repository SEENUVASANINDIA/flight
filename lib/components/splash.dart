// ignore_for_file: prefer_const_constructors

import 'package:flight/flights/products_screen.dart';
// import 'package:flight/saple.dart';
import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProductsScreen()));
      // Navigator.popAndPushNamed(context, demo() as String);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SizedBox(
        // width: double.maxFinite,
        // height: double.maxFinite,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
           

          
            Image(
              image: AssetImage('assets/images/splash.png'),
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
