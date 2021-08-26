import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    GlobalKey<FormState> _form = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Soma')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
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
                    _form.currentState.validate();
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Resultado: '), Text('24')],
            ),
          ),
        ],
      ),
    );
  }
}
