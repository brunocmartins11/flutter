import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var imagemApp = AssetImage("imagens/padrao.png");

  void opcaoSelecionada(String escolhaUsuario) {
    var opcoes = ["pedra", "papel", "tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];
    print("user: " + escolhaUsuario);
    print("app: " + escolhaApp);

    switch (escolhaApp) {
      case "pedra":
        setState(() {
          this.imagemApp = AssetImage(
            "imagens/pedra.png",
          );
        });
        break;

      case "papel":
        setState(() {
          this.imagemApp = AssetImage(
            "imagens/papel.png",
          );
        });
        break;
      case "tesoura":
        setState(() {
          this.imagemApp = AssetImage(
            "imagens/tesoura.png",
          );
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jo! Kem! Pô!"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        Image(image: this.imagemApp, height: 120),
        const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha uma opção abaixo:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Image.asset("imagens/pedra.png", height: 100),
              onTap: () {
                opcaoSelecionada("pedra");
              },
            ),
            GestureDetector(
              child: Image.asset("imagens/papel.png", height: 100),
              onTap: () {
                opcaoSelecionada("papel");
              },
            ),
            GestureDetector(
              child: Image.asset("imagens/tesoura.png", height: 100),
              onTap: () {
                opcaoSelecionada("tesoura");
              },
            ),
          ],
        )
      ]),
    );
  }
}
