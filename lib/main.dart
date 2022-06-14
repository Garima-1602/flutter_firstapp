import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(
  MaterialApp(
    title: 'Stateful widget app',
    home: FavoriteCity(), //favoritecity will be stateful widget
               )
        );
}

class FavoriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _FavoriteCityState();
  }
}
//define state//_so that class will remain private to own library
//this class defines state of our widget
class _FavoriteCityState extends State<FavoriteCity>{
  String nameCity ="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[ //array of widgets
            TextField(
              //can use onChanged as well instead of onSubmitted
              onSubmitted: (String userInput){
                setState(() {
                  nameCity= userInput;
                });


              },
            //widget in flutter that allow user to enter some data
            //i.e it allows user inputFormatters:
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
                child: Text(
              'Your fav city is $nameCity',
              style: TextStyle(fontSize: 30.0,color: Colors.black,),


            ))

          ],
        ),
      ),
    );
  }
}