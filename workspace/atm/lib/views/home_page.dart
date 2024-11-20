import 'package:atm/views/tela_cliente.dart';
import 'package:atm/views/tela_contato.dart';
import 'package:atm/views/tela_empresa.dart';
import 'package:atm/views/tela_servico.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEmpresa() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => Empresa())));
  }

  void _abrirServico() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => Servico())));
  }

  void _abrirCliente() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => Cliente())));
  }

  void _abrirContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => Contato())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Atm Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset("imagens/logo.png"),
              Padding(
                padding: EdgeInsets.only(top: 32),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("imagens/menu_empresa.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset("imagens/menu_servico.png"),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 32),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset("imagens/menu_cliente.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: Image.asset("imagens/menu_contato.png"),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
