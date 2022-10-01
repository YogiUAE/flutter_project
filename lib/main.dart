import 'package:flutter/material.dart';



import 'package:firebase_core/firebase_core.dart';

// void main(){
// WidgetsFlutterBinding.ensureInitialized();
  
//   runApp(myapp());
   
  
  
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
 
  runApp(myapp());
}
class myapp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text('Hello'),
        ),
      body:FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Could not connected'+snapshot.error.toString()),
            );
          }
          if (snapshot.connectionState == ConnectionState.done){
            return Center(
              child: Text('connected'),
            );
          }
          return Center(child: CircularProgressIndicator(),);
        }
      ) ,
      ) ,
    );
  }
}
