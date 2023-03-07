import 'package:flutter/material.dart';

void main() => runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget {
  const PerguntasApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
      ),
    );
  }
}
