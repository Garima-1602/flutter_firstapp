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
    home: Scaffold(
      appBar: AppBar(title: Text("Basic List view"),),
      body: getListView(),
    ),
    //always put scrollable widgets within scaffold because they might overflow
  ));
}

Widget getListView()
{ //ListView is a scrollable list of widgets arranged linearly.
  // It displays its children one
  // after another in the scroll direction i.e, vertical or horizontal.
  var listView = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("B'ful View!"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("windows"),
        //subtitle: Text("B'ful View!"),
        //trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
      leading: Icon(Icons.phone),
        title: Text("phone"),
),

    ],

  );
  return listView;
}
