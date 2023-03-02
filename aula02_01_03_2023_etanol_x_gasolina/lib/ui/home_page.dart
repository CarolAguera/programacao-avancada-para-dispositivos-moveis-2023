import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var resultado = "";

  final etanolController = TextEditingController();
  final gasolinaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Etanol x Gasolina"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //Text("Etanol: "),
          criarCampoTexto("Etanol: ", etanolController),

          //Text("Gasolina: "),
          criarCampoTexto("Gasolina: ", gasolinaController),

          ElevatedButton(
            onPressed: calcular,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calculate_outlined),
                Text("Calcular"),
              ],
            ),
          ),

          Text("RESULTADO $resultado"),
        ],
      ),
    );
  }

  void calcular() {
    double valorEtanol = double.parse(etanolController.text);
    double valorGasolina = double.parse(gasolinaController.text);

    if (valorEtanol <= (valorGasolina * 0.7)) {
      resultado = "Etanol é melhor";
    }
    else {
      resultado = "Gasolina é melhor";
    }

    setState(() { });
  }

  Widget criarCampoTexto(String texto, TextEditingController controlador) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: TextField(
        controller: controlador,
        decoration: InputDecoration(
          labelText: texto,
          prefixText: "R\$ ",
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}