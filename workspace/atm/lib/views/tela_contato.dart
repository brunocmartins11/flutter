import 'package:flutter/material.dart';

class Contato extends StatefulWidget {
  const Contato({Key? key}) : super(key: key);

  @override
  State<Contato> createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contato")),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("imagens/detalhe_contato.png"),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Contatos", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "atendimento@atmconsultoria.com.br",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Telefone: (11) 6836-7568",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Celular: (11) 96506-7748",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      )),
    );
  }
}
