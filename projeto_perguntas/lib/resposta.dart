import 'package:flutter/material.dart';

// ignore: camel_case_types
class Resposta extends StatelessWidget {
  final String texto;

  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
          ),
          child: Text(texto),
          onPressed: quandoSelecionado,
        ),
      ),
    );
  }
}
