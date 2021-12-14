
import 'dart:async';

import 'package:e_mart/utils/text_style.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen())));
    return Scaffold(
      body: Container(
        child: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 5000),
              child: Column(
                children: [
                  Image.asset("assets/images/logistics.png",
                  height: 300,
                  width: 400,),
                  SizedBox(height: 8,),
                  Text("Welcome to E-Mart",
                  style: large,
                  ),

                ],
              ),
        ),
        )
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Made By",style: small,),
          Icon(Icons.favorite,color: Colors.red,),
          Text("OsmanGaohar",style: small,)
        ],
      ),
    );
  }
}
