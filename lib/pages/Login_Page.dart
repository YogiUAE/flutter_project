import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/Registration.dart';

class LoginPage extends StatefulWidget {
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNamecontroller = TextEditingController();
    final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LogIn Page"),

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                         children: [
                          TextFormField(
                            decoration: InputDecoration(hintText: "Enter Username",labelText: "Username"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                           decoration: InputDecoration(hintText: "Enter Password",labelText: "Password"), 
                          )
                         ],
                      ),
                    )
                    ),
                    SizedBox(
                            height: 20,
                          ),
                  ElevatedButton(onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context)=>HomePage()
                        ));
                  },
                   child: Text("Sign In"),
                   
                    style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // background
                  
  ),

                    
                   ),
                  
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child:  ElevatedButton(onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context)=>Registration()
                        ));
                  },
                   child: Text("Create New Account"),
                   
                      style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 54, 212, 244), // background
                  
  ),

                      
                   ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}