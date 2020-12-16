
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'body.dart';

class FinalPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kTextLightColor,
        appBar: buildAppBar(context),
        body: Body(),
        );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: kSecondaryColor,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: Icon(arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Back'.toUpperCase(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
       
      );
  }
}
