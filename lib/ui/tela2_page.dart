import 'package:flutter/material.dart';
import 'package:quarto_flutter_app/widgets/barra_titulo.dart';

class Tela2Page extends StatelessWidget {
  final String texto;
  final int ano;

  Tela2Page(this.texto, this.ano);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraTitulo.criar("Tela 2"),
      body: Column(
        children: [
          Text("Texto recebido " + texto),
          Text("Ano $ano"),
        ],
      ),
    );
  }
}
