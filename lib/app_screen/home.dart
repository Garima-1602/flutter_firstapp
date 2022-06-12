import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(top: 80.0,left: 10.0,right: 10.0),
            alignment: Alignment.center,
            color: Colors.green,
            //width:200.0,
            //height:100.0,
            //margin: EdgeInsets.all(15.0),
           //adding images using assets-assets are resources that you add
            //locally in app
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
                        fontSize: 25.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    //expanded is to use avail space
                    Expanded(
                        child: Text(
                          "Plant ",
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
                          "remedial and harmful",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 25.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                  ],
                ),
                FlightImageAsset()
              ],
            )));
  }
}
class FlightImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/plantimage.jpg');
    Image image = Image(image: assetImage,width: 250.0,height:300.0);
    return Container(child: image,
      padding: EdgeInsets.only(top: 80.0,left: 10.0,right: 10.0),);
  }
}
