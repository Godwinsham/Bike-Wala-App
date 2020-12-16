
import 'package:flutter/material.dart';

// ignore: camel_case_types
class HelloBox extends StatelessWidget {
  const HelloBox({
    Key key, this.onChanged,
  }) : super(key: key);
  final ValueChanged onChanged;
  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(
             horizontal:120,
             vertical:20 ,
    ),
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.10),
     borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
     'Hello !',
     style: TextStyle(fontSize: 40),
  )
    );
  }
}