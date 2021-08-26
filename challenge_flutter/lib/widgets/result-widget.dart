import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';


class ResultWidget extends StatelessWidget {
  const ResultWidget({Key key, this.result}) : super(key: key);
  final int result;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.center,
      child: Container(
        width: width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.7),
          border: Border.all(style: BorderStyle.solid, color: Colors.orange),
          color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: AutoSizeText('Resultado: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
              AutoSizeText(this.result == null ? "0" : this.result.toString(), style: TextStyle(fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
