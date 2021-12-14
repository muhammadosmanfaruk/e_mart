import 'package:flutter/material.dart';


class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Registration'),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/reg.png", height: 250,
              width: 200),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: TextFormField(
              obscureText: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "ex@gmail.com",
                labelText: "Email",
                contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: TextFormField(
              obscureText: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: "Enter your username",
                  labelText: "Username",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: "********",
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: "********",
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text("Register"))
        ],
      ),

    );
  }
}
