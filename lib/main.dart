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
      body: Container(
        child: Center(child: Text("Hello World")),
      ),
    );
  }
}