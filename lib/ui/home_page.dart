import 'package:flutter/material.dart';
import 'package:quarto_flutter_app/ui/tela2_page.dart';
import 'package:quarto_flutter_app/widgets/barra_titulo.dart';
import 'package:quarto_flutter_app/widgets/botao.dart';
import 'package:quarto_flutter_app/widgets/campo_texto.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var textoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraTitulo.criar("Aula 07"),
      body: Column(
        children: [
          CampoTexto.criar(textoController, "Digite algo", "", TextInputType.text),
          Botao.criar("Abrir tela 2", _eventoAbrir)
        ],
      )
    );
  }

  void _eventoAbrir() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => Tela2Page(textoController.text, 2021),
    ));
  }

}

