import 'package:flutter/material.dart';

class Formacao extends StatelessWidget {
  const Formacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _texto('Administração (2011)'),
        _texto('UNIP\n'),
        _texto('Análise e Desenvolvimento \nde Sistemas (Prev 2/2022)'),
        _texto('Fatec Praia Grande')
      ],
    ));
  }

  _texto(String valor) {
    return Text(
      valor,
      style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
