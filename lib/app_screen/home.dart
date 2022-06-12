import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(top: 80.0, left: 10.0, right: 10.0),
            alignment: Alignment.center,
            color: Colors.green,
            //width:200.0,
            //height:100.0,
            //margin: EdgeInsets.all( 15.0),
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
                PlantImageAsset(),
                PlantButton()
              ],
            )));
  }
}

class PlantImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/plantimage.jpg');
    Image image = Image(image: assetImage, width: 250.0, height: 300.0);
    return Container(child: image,
      padding: EdgeInsets.only(top: 80.0, left: 10.0, right: 10.0),);
  }
}

class PlantButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      width: 150.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.white,
          child: Text(
              "click image",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700
              )
          ),
          elevation: 15.0,
          onPressed: () => clickImage(context)
          ),
    );
  }

  void clickImage(BuildContext context) {
    var alertDialog = AlertDialog(
      // the AlertDialog is a widget, which informs the user
      // //about the situations that need acknowledgment.
      title: Text("Image clicked Successfully"),
      content: Text("Know more about the plant!"),
    );

    showDialog(
        context: context,
    //build is a func handler that handle argument and return widget
    //buildcontext is received in stateless widget and tell context widget is build
      builder: (BuildContext context)=> alertDialog

    );
  }
}
