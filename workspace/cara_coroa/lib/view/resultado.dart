import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  var valor;
  Resultado(this.valor);

  //const Resultado({Key? key}) : super(key: key);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if (widget.valor == "cara") {
      caminhoImagem = "imagens/moeda_cara.png";
    } else {
      caminhoImagem = "imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(caminhoImagem, height: 500),
              GestureDetector(
                child: Image.asset("imagens/botao_voltar.png", height: 200),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ]),
      ),
    );
  }
}
