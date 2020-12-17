import 'package:flutter/material.dart';

import '../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool value = false;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: 450,
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: <Widget>[
              new Flexible(
                child: new TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter your Brand Name',
                        contentPadding: EdgeInsets.all(10))),
              ),
              new Flexible(
                child: new TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter your chasis no',
                        contentPadding: EdgeInsets.all(10))),
              ),
              new Flexible(
                child: new TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter Your Bike Model Num',
                        contentPadding: EdgeInsets.all(10))),
              ),
              new Flexible(
                child: new TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter Your Reg-No',
                        contentPadding: EdgeInsets.all(10))),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 0.0, top: 150),
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: kBlueColor.withOpacity(0.5),
                      splashColor: kTextColor,
                      child: Text("Submit Details"),
                      onPressed: () {
                        new RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0.5),
                          topRight: Radius.circular(40),
                        ));
                      })),
            ],
          ),
        ),
      ],
    );
  }
}
