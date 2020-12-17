
import 'package:bikewalafinal/ourservices/services.dart';
import 'package:bikewalafinal/screens/Details/Finalpage.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'Liste.dart';
import 'Servicecode.dart';
import 'hello.dart';



class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}



class _BodyState extends State<Body> {
  get z => null;
 

  

  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(children: <Widget>[
          HelloBox(),
          Liste(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
              ),
              ListView.builder(
                itemCount: repairs.length,
                itemBuilder: (context, index) => ServiceCode(
                  itemIndex: index,
                  repair: repairs[index],
                ),
              ),
              SizedBox(height: kDefaultPadding / 15),
             Padding(
  padding: EdgeInsets.only(left: 60.0, right: 0.0,top: 550),
  // ignore: missing_required_param
  child: RaisedButton(
    hoverColor: kBackgroundColor,
    textColor: Colors.white,
    color: kTextLightColor.withOpacity(0.5),
    splashColor: Colors.green,
    child: Text("Long Press To Submit Your Details"),
         onLongPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FinalPage(),
                        
                      ));
    new RoundedRectangleBorder(
     borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0.5),
                      topRight: Radius.circular(40),
                    ));
          }) ),
            
            ]),
          ),
        ]));
  }
}
