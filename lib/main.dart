
import 'package:bikewalafinal/screens/services/service_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'constants.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bike Wala',
      theme: ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
       primaryColor: kSecondaryColor,
       accentColor: kSecondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Servicescreen()
    );
  }
}

