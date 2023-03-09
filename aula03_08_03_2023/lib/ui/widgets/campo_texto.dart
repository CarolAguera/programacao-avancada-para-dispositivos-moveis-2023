import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  String texto;
  String? prefixo; //? indica que permite valor nulo

  //objetos que estao entre chaves {}, sao os objetos
  // nomeados, e nesse caso, sao opcionais
  CampoTexto(this.texto, {this.prefixo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: texto,
          prefixText: prefixo
        ),
      ),
    );
  }
}