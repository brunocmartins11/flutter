import 'package:flutter/material.dart';

class Cliente extends StatefulWidget {
  const Cliente({Key? key}) : super(key: key);

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cliente")),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("imagens/detalhe_cliente.png"),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Clientes", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Empresa de Software",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Netflix",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "T-Systems",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      )),
    );
  }
}
