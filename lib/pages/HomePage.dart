import 'package:flutter/material.dart';
import 'package:flutter_application_1/Drawer.dart';


class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome "),
      ),
      body: Center(
        child: Container(
          child: Image(image: AssetImage('assets/images.png')),
        ),
      ),
        drawer: MyDrawer(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),

      ),
    );
  }
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
  
 
//   runApp(myapp());
// }
// class myapp extends StatelessWidget {
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:Scaffold(
//         appBar: AppBar(
//           title:Text('Hello'),
//         ),
//       body:FutureBuilder(
//         future: _initialization,
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return Center(
//               child: Text('Could not connected'+snapshot.error.toString()),
//             );
//           }
//           if (snapshot.connectionState == ConnectionState.done){
//             return Center(
//               child: Text('connected'),
//             );
//           }
//           return Center(child: CircularProgressIndicator(),);
//         }
//       ) ,
//       ) ,
//     );
//   }
// }