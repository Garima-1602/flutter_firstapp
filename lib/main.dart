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
      appBar: AppBar(title: Text("Long list view"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        tooltip: 'Add more items' ,
      ),
    ),

  ));
}
//Function to prepare data source
List<String> getListElements(){
  var items=List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}
//once data source is prepared wrap in the widgets
Widget getListView()
{
  var listItems=getListElements();
  var listView=ListView.builder(
    //listview builder calls the builder method that are visible on screen
      //ListView.builder creates a scrollable, linear array of widgets.
      itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title:Text(listItems[index]),
          onTap: (){
            debugPrint('${listItems[index]}was tapped');
          }
        );
      }
  );
  return listView;
}

// Widget getListView()
// { //ListView is a scrollable list of widgets arranged linearly.
//   // It displays its children one
//   // after another in the scroll direction i.e, vertical or horizontal.
//   var listView = ListView(
//     children: <Widget>[
//
//       ListTile(
//         leading: Icon(Icons.landscape),
//         title: Text("Landscape"),
//         subtitle: Text("B'ful View!"),
//         trailing: Icon(Icons.wb_sunny),
//         onTap: (){//we cannot add on tap on 1000 list items therefore basic listview
//           //is meant for few items only
//           //never use listview for large items
//           //always use or wrap listview in sccafold as it may go beyond the screen as
//           //items are movable in list
//           debugPrint("Landscape");
//         },
//       ),
//       ListTile(
//         leading: Icon(Icons.laptop_chromebook),
//         title: Text("windows"),
//         //subtitle: Text("B'ful View!"),
//         //trailing: Icon(Icons.wb_sunny),
//       ),
//       ListTile(
//       leading: Icon(Icons.phone),
//         title: Text("phone"),
// ),
//
//     ],
//
//   );
//   return listView;
// }
