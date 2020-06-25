import 'package:aog/components/input.widget.dart';
import 'package:aog/components/loading-button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MaskedTextController(mask: '0.00');
  var aclCtrl = new MaskedTextController(mask: '0.00');
  var busy = false;
  Function submitForm;

  SubmitForm(
      {@required this.gasCtrl,
      @required this.aclCtrl,
      @required this.busy,
      @required this.submitForm});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            ctrl: gasCtrl,
            label: "Gasolina",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            ctrl: aclCtrl,
            label: "Ácool",
          ),
        ),
        LoadingButton(
            busy: busy, invert: false, func: submitForm, text: "Calcular"),
      ],
    );
  }
}
