import 'dart:async';

import 'package:e_mart/screens/registration_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
        Image.asset("assets/images/2.png", height: 400,
            width: 500),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "ex@gmail.com",
                labelText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                )

              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: "********",
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
              ),
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){}, child: Text("Login")),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Don't have account?"),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (contex)=> Register()));
                },
                child: Text("Register"),
              )
            ],
          )
  ]
        ),
      );
  }
}
