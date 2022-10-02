import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login_Page.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ragistration Page"),

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
                            
                           decoration: InputDecoration(hintText: "Enter Your Email",labelText: "Email"), 
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
                        builder: (context)=>LoginPage()
                        ));
                  },
                   child: Text("Create Account"),
                   
                    style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 59, 79, 207), // background
                  
  ),

                    
                   ),
                   
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}