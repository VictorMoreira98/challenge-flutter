import 'package:challenge_flutter/controller/calculator.dart';
import 'package:challenge_flutter/widgets/calculator-widget.dart';
import 'package:challenge_flutter/widgets/result-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Calculator _calculatorStore;

  @override
  void initState() {
    super.initState();
    _calculatorStore = GetIt.instance<Calculator>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Soma')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CalculatorWidget(
              calculatorStore: _calculatorStore,
            ),
            Observer(builder: (BuildContext context) {
              return ResultWidget(
                result: _calculatorStore.result,
              );
            })
          ],
        ));
  }
}
