import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  const Resultado(this.pontuacao);

  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Parabéns',
        style: TextStyle(fontSize: 28.0),
      ),
    );
  }
}
