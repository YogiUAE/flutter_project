import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            children: [
             // DrawerHeader(
               // child: Text("hello"),
               // decoration: BoxDecoration(color:Colors.yellow),
             // ),
             UserAccountsDrawerHeader(
              accountName: Text("Yogesh"), 
              accountEmail: Text("yogisuthar@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://media.istockphoto.com/photos/scary-ghost-on-dark-background-picture-id1334434982?s=612x612"),
                ) 
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                subtitle: Text("Personal"),
                trailing: Icon(Icons.edit),

              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("yogisuthar@.com"),
                trailing: Icon(Icons.send),

              ),
            ],
          ),
        );
  }
}