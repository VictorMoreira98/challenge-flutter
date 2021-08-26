import 'package:challenge_flutter/controller/calculator.dart';
import 'package:challenge_flutter/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<Calculator>(Calculator());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge Flutter',
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.grey[900],
        primarySwatch: Colors.orange,
      ),
      home: Home(),
    );
  }
}