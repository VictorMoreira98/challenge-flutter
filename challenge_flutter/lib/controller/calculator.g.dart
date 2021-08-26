// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Calculator on _CalculatorBase, Store {
  Computed<int> _$resultComputed;

  @override
  int get result => (_$resultComputed ??=
          Computed<int>(() => super.result, name: '_CalculatorBase.result'))
      .value;

  final _$_resultAtom = Atom(name: '_CalculatorBase._result');

  @override
  int get _result {
    _$_resultAtom.reportRead();
    return super._result;
  }

  @override
  set _result(int value) {
    _$_resultAtom.reportWrite(value, super._result, () {
      super._result = value;
    });
  }

  final _$_CalculatorBaseActionController =
      ActionController(name: '_CalculatorBase');

  @override
  dynamic calculate(dynamic num) {
    final _$actionInfo = _$_CalculatorBaseActionController.startAction(
        name: '_CalculatorBase.calculate');
    try {
      return super.calculate(num);
    } finally {
      _$_CalculatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
result: ${result}
    ''';
  }
}
