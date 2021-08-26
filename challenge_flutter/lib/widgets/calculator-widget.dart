import 'package:challenge_flutter/controller/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget({ Key key, this.calculatorStore }) : super(key: key);
   final Calculator calculatorStore;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    GlobalKey<FormState> _form = GlobalKey();
    
    return  Align(
            alignment: Alignment.center,
            child: Container(
              width: width * 0.4,
              child: Form(
                key: _form,
                child: TextFormField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(labelText: "Digite um número..."),
                  keyboardType: TextInputType.numberWithOptions(decimal: false),
                  onChanged: (value) {
                    if(value.isNotEmpty)
                    calculatorStore.calculate(int.parse(value));
                  },
                ),
              ),
            ),
          );
  }
}