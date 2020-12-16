import 'package:flutter/material.dart';


import '../../../constants.dart';





class Liste extends StatefulWidget {
  @override
  _Liststate createState() => _Liststate();
}

class _Liststate extends State<Liste> {
  // by default first item will be selected
  int selectedIndex = 0;
  List categories = ['Our Services', 'History', 'User','About Us',];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              // At end item it add extra 20 right  padding
              right: index == categories.length - 1 ? kDefaultPadding : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              categories[index],
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
