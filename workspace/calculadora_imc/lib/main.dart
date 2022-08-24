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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora de IMC"),
          centerTitle: true,
          backgroundColor: Colors.green,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.person_outline, size: 120.0, color: Colors.green),
            TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Peso (Kg)",
                    labelStyle: TextStyle(color: Colors.green, fontSize: 15.0)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25.0)),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Altura (cm)",
                    labelStyle: TextStyle(color: Colors.green, fontSize: 15.0)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25.0)),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {},
                child: Text("Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 20.0))),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Info",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 20.0),
            ),
          ],
        ));
  }
}
