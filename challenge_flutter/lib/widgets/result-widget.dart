import 'package:flutter/widgets.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key key, this.result}) : super(key: key);
  final int result;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Resultado: '),
          Text(this.result == null ? "0" : this.result.toString())
        ],
      ),
    );
  }
}
