import 'package:aog/components/logo.widget.dart';
import 'package:aog/components/submit-form.widget.dart';
import 'package:aog/components/success.widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasCtrl = new MaskedTextController(mask: '0.00');
  var _alcCtrl = new MaskedTextController(mask: '0.00');
  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa utilizar Ácool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          _completed
              ? Success(
                  reset: reset,
                  result: _resultText,
                )
              : SubmitForm(
                  aclCtrl: _alcCtrl,
                  gasCtrl: _gasCtrl,
                  busy: _busy,
                  submitForm: calculate,
                ),
        ],
      ),
    );
  }

  Future calculate() {
    double alcool = double.parse(_alcCtrl.text) / 100;
    double gasolina = double.parse(_gasCtrl.text) / 100;
    double total = alcool / gasolina;

    setState(() {
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(
      const Duration(seconds: 2), 
      () {
        setState(() {
          if (total >= 0.7) {
            _resultText = "GASOLINA";
          } else {
            _resultText = "Ácool";
          }

          _completed = true;
          _busy = false;
        });

      }
    );

  }

  reset(){
    setState(() {
      _gasCtrl = new MaskedTextController(mask: '0.00');
      _alcCtrl = new MaskedTextController(mask: '0.00');
      _completed = false;
      _busy = false;
    });
  }
}
