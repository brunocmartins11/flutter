import 'package:flutter/material.dart';

class Servico extends StatefulWidget {
  const Servico({Key? key}) : super(key: key);

  @override
  State<Servico> createState() => _ServicoState();
}

class _ServicoState extends State<Servico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Serviço")),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("imagens/detalhe_servico.png"),
                const SizedBox(
                  height: 20,
                ),
                const Text("Nossos Serviços", style: TextStyle(fontSize: 20)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Consultoria", style: TextStyle(fontSize: 20)),
            const SizedBox(
              height: 20,
            ),
            Text("Cálculo de Preços", style: TextStyle(fontSize: 20)),
            const SizedBox(
              height: 20,
            ),
            Text("Acompanhamento de Projetos", style: TextStyle(fontSize: 20)),
          ],
        ),
      )),
    );
  }
}
