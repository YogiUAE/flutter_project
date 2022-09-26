import 'package:flutter/material.dart';
import 'package:flutter_application_1/Drawer.dart';


class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome App"),
      ),
      body: Container(),
        drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),

      ),
    );
  }
}