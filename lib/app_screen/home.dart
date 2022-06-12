import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.green,
            //width:200.0,
            //height:100.0,
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(40.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    //expanded is to use avail space
                    Expanded(
                        child: Text(
                      "KYP",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "Know Your Plant",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                  ],
                )
              ],
            )));
  }
}
