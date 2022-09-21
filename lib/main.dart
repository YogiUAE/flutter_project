import 'package:flutter/material.dart';


void main(){
  
  runApp(MaterialApp(
    title:"First App" ,
    home: HomePage(),
  ));
  
}
class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new app"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
         color:Colors.cyan,
         child: Text("My New App"),
         width: 400,
         height: 500,
         
        )
        ),
    );
  }
}