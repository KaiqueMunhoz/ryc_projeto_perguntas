import 'package:flutter/material.dart';
import 'package:ryc_projeto_perguntas/questao.dart';
import 'package:ryc_projeto_perguntas/resposta.dart';

void main() => runApp(PerguntasApp());

class PerguntasApp extends StatefulWidget {
  @override
  _PerguntasAppState createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<PerguntasApp> {
  int _perguntaSelecionada = 0;

  final List<Map<String, dynamic>> perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é a seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> respostas = [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas
          ],
        ),
      ),
    );
  }

  void responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }
}
