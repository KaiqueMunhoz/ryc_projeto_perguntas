import 'package:flutter/material.dart';
import 'package:ryc_projeto_perguntas/questao.dart';
import 'package:ryc_projeto_perguntas/resposta.dart';

void main() => runApp(PerguntasApp());

class PerguntasApp extends StatefulWidget {
  @override
  _PerguntasAppState createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<PerguntasApp> {
  final List<Map<String, Object>> perguntas = [
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
  int _perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> _pergunta = perguntas[_perguntaSelecionada];
    final String _texto = _pergunta['texto'];
    final List<String> _respostas = _pergunta['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(_texto),
            Column(
              children: _respostas
                  .map((_resposta) => Resposta(_resposta, responder))
                  .toList(),
            )
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
