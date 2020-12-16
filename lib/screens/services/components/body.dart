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
              SizedBox(height: kDefaultPadding / 10),
              MaterialButton(
                padding: EdgeInsets.all(8.0),
                textColor: Colors.white,
                splashColor: Colors.greenAccent,
                elevation: 8.0,
                child: Container(
                  child: new Positioned(
                    bottom: 50,
                    child: Text("SIGN OUT"),
                  ),
                ),
                // ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FinalPage(),
                      ));
                },
              ),
            ]),
          ),
        ]));
  }
}
