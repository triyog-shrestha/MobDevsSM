import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class democlass extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return democlassstate();
  }

}


class democlassstate extends State<democlass>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AppBar(
            middle: Text("This is a navbar"),
          ),
          Text("This is a demo class"),
        ],
      )
    );

  }

}