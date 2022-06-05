// import "package:flutter/material.dart";
// import './app_screen/first_screen.dart';
// //this is library which contain material design
// //material design lang developed by google and defines some guidelines for ios,web and all
// //import './app_screen/first_screen.dart';
// void main()//whatever we write in this will be executed //entry point of application
// {
//   runApp(new MyFlutterApp()); //inflates the widget and show it on app screen
//      //add another widget  materialapp);
// }
// //FUNCTION EXPRESSION -:WHEN WE HAVE ONE LINE CODE CAN BE WRITTEN AS
// //void main() =>runApp(new MyFlutterApp());
// class MyFlutterApp extends StatelessWidget
//     //the widget return in this will not contain any state and will not be changed in future
//     //Stateless widget is superclass and myflutterapp is sub class
// {
//   @override
//   Widget build(BuildContext context)
//   {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//         title:"My Flutter App",
//         home:Scaffold(
//           appBar: AppBar(title: Text("My First App "),backgroundColor: Colors.black,),
//           body: FirstScreen()
//     )    //scaffold:it allows to add app bar at top of application
//     );
//   }
//
import 'package:flutter/material.dart';
import './app_screen/home.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"Exploring UI Widgets",
    home:Home(),
  ));
}

