
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
          height: 300,
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
                labelText:'Enter your Brand Name',
                  contentPadding: EdgeInsets.all(10)
              )
          ),
        ),
        new Flexible(
          child: new TextFormField(
              decoration: InputDecoration(
                labelText:'Enter your chasis no',
                  contentPadding: EdgeInsets.all(10)
              )
          ),
        ),
        new Flexible(
          child: new TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Your Bike Model Num',
                  contentPadding: EdgeInsets.all(10)
              )
          ),
        ),
new Flexible(
          child: new TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Your Reg-No',
                  contentPadding: EdgeInsets.all(10)
              )
          ),
        ),

        
                
            ],
          ),
        ),
      ],
    );
  }
}
