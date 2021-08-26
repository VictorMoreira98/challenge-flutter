import 'package:mobx/mobx.dart';
part 'calculator.g.dart';

class Calculator = _CalculatorBase with _$Calculator;

abstract class _CalculatorBase with Store {

  @observable
  int _result = 0;

  @computed
  int get result => _result;

  @action
  calculate(num){
    _result = 0;
    for (var i = 0; i < num; i++) {
      if(i % 3 == 0 || i % 5 == 0){
        _result = _result + i;
      }
    }
  }
  
}