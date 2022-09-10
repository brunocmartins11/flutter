import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();
  String _Infor = "";
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void resetCampos() {
    peso.text = "";
    altura.text = "";
    _Infor = "Informe seus dados!";
  }

  void calcular() {
    setState(() {
      double pesoDigitado = double.parse(peso.text);
      double alturaDigitado = double.parse(altura.text) / 100;
      double imc = pesoDigitado / (alturaDigitado * alturaDigitado);
      if (imc < 18.5) {
        _Infor = "Abaixo do peso (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 18.5 && imc <= 24.9) {
        _Infor = "Peso normal(${imc.toStringAsPrecision(3)})";
      } else if (imc >= 25.0 && imc <= 29.9) {
        _Infor = "Sobrepeso(${imc.toStringAsPrecision(3)})";
      } else if (imc >= 30.0 && imc <= 34.9) {
        _Infor = "Obesidade grau 1 (${imc.toStringAsPrecision(3)})";
      } else {
        _Infor = "Obesidade grau 2 (${imc.toStringAsPrecision(3)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora de IMC"),
          centerTitle: true,
          backgroundColor: Colors.green,
          actions: [
            IconButton(onPressed: resetCampos, icon: Icon(Icons.refresh))
          ],
        ),
        backgroundColor: Colors.white,
        body: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.person_outline, size: 120.0, color: Colors.green),
              TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Peso (Kg)",
                      labelStyle:
                          TextStyle(color: Colors.green, fontSize: 15.0)),
                  controller: peso,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Insira seu peso!";
                    }
                  },
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green, fontSize: 25.0)),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Altura (cm)",
                      labelStyle:
                          TextStyle(color: Colors.green, fontSize: 15.0)),
                  controller: altura,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Insira sua altura!";
                    }
                  },
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green, fontSize: 25.0)),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      calcular();
                    }
                  },
                  child: Text("Calcular",
                      style: TextStyle(color: Colors.white, fontSize: 20.0))),
              SizedBox(
                height: 20.0,
              ),
              Text(
                _Infor,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 20.0),
              ),
            ],
          ),
        ));
  }
}
