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
          PizzaImageWidget(),
          OrderButton(),
        ]));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza1.png');
    Image image = Image(
      image: pizzaAsset,
      width: 400.0,
      height: 400.0,
    );
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order your Pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
