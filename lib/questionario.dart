import 'package:flutter/material.dart';
import 'package:ryc_projeto_perguntas/questao.dart';
import 'package:ryc_projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  const Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resposta) => Resposta(resposta, responder)).toList()
      ],
    );
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }
}
