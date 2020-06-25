import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {

  var label = "";
  var ctrl = new MaskedTextController(mask: '0.00');

  Input({
    @required this.label,
    @required this.ctrl
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 110,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '0,00',
            ),
          ),
        )
      ],
    );
  }
}
