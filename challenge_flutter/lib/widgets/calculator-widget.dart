import 'package:challenge_flutter/controller/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget({Key key, this.calculatorStore}) : super(key: key);
  final Calculator calculatorStore;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    GlobalKey<FormState> _form = GlobalKey();

    return Align(
      alignment: Alignment.center,
      child: Container(
        width: width / 2,
        child: Form(
          key: _form,
          child: TextFormField(
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                labelText: "Digite um número...",
                filled: true,
                fillColor: Colors.white12,
                labelStyle: TextStyle(color: Colors.orange),
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.7),
                )),
            keyboardType: TextInputType.numberWithOptions(decimal: false),
            onChanged: (value) {
              if (value.isNotEmpty) calculatorStore.calculate(int.parse(value));
            },
          ),
        ),
      ),
    );
  }
}
