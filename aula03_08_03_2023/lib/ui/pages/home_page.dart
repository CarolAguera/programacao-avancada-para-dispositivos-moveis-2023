import 'package:aula03_08_03_2023/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold -> estrutura de tela completa (com appbar, body)
    return Scaffold(
      //AppBar -> barra de titulo do App
      appBar: AppBar(title: Text('Minhas Notas')),
      //Column -> Permite adicionar varios filhos, na vertical
      body: Column(
        children: [
          CampoTexto('Nota 1: '),
          CampoTexto('Nota 2: ', prefixo: '-> ',),
        ],
      ),
    );
  }
}

