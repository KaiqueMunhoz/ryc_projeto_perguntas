import 'package:flutter/material.dart';
import 'package:ryc_projeto_perguntas/questao.dart';
import 'package:ryc_projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quantoResponder;

  const Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.quantoResponder,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((resposta) => Resposta(resposta['texto'].toString(),
                () => quantoResponder(resposta['pontuacao'])))
            .toList()
      ],
    );
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }
}
