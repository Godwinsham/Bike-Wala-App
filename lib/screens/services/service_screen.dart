
import '../../constants.dart';
import 'components/body.dart';
import 'package:flutter/material.dart';

class Servicescreen extends StatelessWidget{
  Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: kSecondaryColor,
    appBar: buildAppBar(),
    body: Body(),
  );
  }
  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      title:Text(''),
      
      centerTitle: true,
     );
  
}}