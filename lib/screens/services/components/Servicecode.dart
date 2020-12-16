
import 'package:bikewalafinal/ourservices/services.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';


import '../../../constants.dart';

class ServiceCode extends StatefulWidget {
  const ServiceCode({
    Key key,
    this.itemIndex,
    this.repair,
    this.press, int itemCount, FlatButton child,
  }) : super(key: key);

  final int itemIndex;
  final Repair repair;
  final Function press;

  @override
  _ServiceCodeState createState() => _ServiceCodeState();
}

class _ServiceCodeState extends State<ServiceCode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      //color: Colors.black,
      height: 220,
      child: InkWell(
        onTap: widget.press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: kBlueColor,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            //Service image area

            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              child: Container(
                height: 150,
                width: 130,
                child: Image.asset(
                  widget.repair.image,
                ),
              ),
            ),

            Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  height: 90,
                  width: 200,
                  child: Column(
                    children: [
                      Text(
                        widget.repair.title,
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            Positioned(
                bottom: 129.5,
                right: 25,
                child: SizedBox(
                  height: 90,
                  width: 200,
                  child: Column(
                    children: [
                      CheckboxGroup(labels: [widget.repair.offers])
                    ],
                  ),
                )),
            
          ],
        ),
      ),
    );
  }
}
