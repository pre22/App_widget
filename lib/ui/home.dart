import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.deepOrangeAccent,
        // Rows and column
        child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Margherita, Marinara",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              )
            ],
          ),

          // row two
          Row(children: <Widget>[
            Expanded(
              child: Text(
                "Tomato Basil Mozzarella",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.normal,
                  fontSize: 30.0,
                  decoration: TextDecoration.none,
                ),
              ),
            )
          ]),
        ]));
  }
}
