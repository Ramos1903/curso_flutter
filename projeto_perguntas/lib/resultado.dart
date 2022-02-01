// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario, {Key? key})
      : super(key: key);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              fraseResultado,
              style: const TextStyle(fontSize: 36),
            ),
          ),
          ElevatedButton(
            onPressed: quandoReiniciarQuestionario,
            child: const Text(
              'Reiniciar?',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent, // background
              onPrimary: Colors.transparent, // foreground
              shadowColor: Colors.transparent,
              onSurface: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
