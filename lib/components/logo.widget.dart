import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            height: 50,
          ),
          Image.asset("assets/images/aog.png",
          height: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Alcool ou Gasolina",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
      ],
    );
  }
}